function ins
    if test (count $argv) -ne 2
        echo "usage: ins SRC TARGET" >&2
        return 2
    end

    set -l src_path $argv[1]
    set -l dst_path $argv[2]

    if not test -f "$src_path"
        echo "ins: source does not exist: $src_path" >&2
        return 1
    end

    set -l dst_dir (dirname "$dst_path")
    if not test -d "$dst_dir"
        echo "ins: target directory does not exist: $dst_dir" >&2
        return 1
    end

    # TARGET, not the archival copy, determines which repository is modified.
    set -l git_root (command git -C "$dst_dir" rev-parse --show-toplevel 2>/dev/null)
    or begin
        echo "ins: target is not inside a Git repository: $dst_path" >&2
        return 1
    end

    set git_root (realpath -- "$git_root")
    or return 1

    set -l abs_dst (realpath -m -- "$dst_path")
    or return 1

    if not string match -q -- "$git_root/*" "$abs_dst"
        echo "ins: target is outside Git repository: $dst_path" >&2
        return 1
    end

    set -l repo_path (string replace -- "$git_root/" "" "$abs_dst")

    function __ins_is_test_namespace --argument-names namespace
        for component in (string split '.' -- "$namespace")
            if test "$component" = test
                return 0
            end

            if string match -q '*-test' -- "$component"
                return 0
            end
        end

        return 1
    end

    function __ins_expected_repo_path --argument-names tree namespace extension
        set -l namespace_path (string replace -a '.' '/' -- "$namespace")
        set namespace_path (string replace -a '-' '_' -- "$namespace_path")
        echo "$tree/$namespace_path.$extension"
    end

    set -l src_ns ''

    # Every namespace-bearing Clojure file under src/ or test/ must agree
    # with the canonical pathname derived FROM its declared namespace.
    # Namespace dots become directories and namespace hyphens become filename
    # underscores. The source artifact and installed target must also retain
    # the same Clojure/ClojureScript extension.
    if string match -rq '^(src|test)/.*\.(clj|cljc|cljs)$' -- "$repo_path"
        set src_ns (nsof "$src_path")
        or begin
            echo "ins: cannot determine source namespace: $src_path" >&2
            functions -e __ins_is_test_namespace __ins_expected_repo_path
            return 1
        end

        set src_ns (string trim -- "$src_ns")

        set -l tree (string split -m 1 '/' -- "$repo_path")[1]
        set -l target_extension (string replace -r '^.*\.' '' -- "$repo_path")
        set -l source_extension (string replace -r '^.*\.' '' -- "$src_path")

        if test "$source_extension" != "$target_extension"
            echo "ins: source/target extension mismatch" >&2
            echo "  source: .$source_extension" >&2
            echo "  target: .$target_extension" >&2
            functions -e __ins_is_test_namespace __ins_expected_repo_path
            return 1
        end

        set -l expected_path (__ins_expected_repo_path "$tree" "$src_ns" "$target_extension")

        if test "$repo_path" != "$expected_path"
            echo "ins: namespace/path mismatch" >&2
            echo "  source namespace: $src_ns" >&2
            echo "  canonical target: $expected_path" >&2
            echo "  requested target: $repo_path" >&2
            functions -e __ins_is_test_namespace __ins_expected_repo_path
            return 1
        end

        # Production source must never contain a test namespace. test/ may
        # contain ordinary helper namespaces as long as the canonical path
        # check above succeeds.
        if test "$tree" = src
            if __ins_is_test_namespace "$src_ns"
                echo "ins: refusing to install a test namespace under src/" >&2
                echo "  namespace: $src_ns" >&2
                echo "  target:    $repo_path" >&2
                functions -e __ins_is_test_namespace __ins_expected_repo_path
                return 1
            end
        end
    end

    set -l dst_existed false

    if test -f "$dst_path"
        set dst_existed true

        # For namespace-bearing files outside src/test, retain the historical
        # source/destination namespace guard.
        if test -z "$src_ns"
            set -l outside_src_ns (nsof "$src_path")
            or begin
                echo "ins: cannot determine source namespace: $src_path" >&2
                functions -e __ins_is_test_namespace __ins_expected_repo_path
                return 1
            end

            set -l dst_ns (nsof "$dst_path")
            or begin
                echo "ins: cannot determine target namespace: $dst_path" >&2
                functions -e __ins_is_test_namespace __ins_expected_repo_path
                return 1
            end

            set outside_src_ns (string trim -- "$outside_src_ns")
            set dst_ns (string trim -- "$dst_ns")

            if test "$outside_src_ns" != "$dst_ns"
                echo "ins: namespace mismatch" >&2
                echo "  source: $outside_src_ns" >&2
                echo "  target: $dst_ns" >&2
                functions -e __ins_is_test_namespace __ins_expected_repo_path
                return 1
            end
        end

        if command cmp -s -- "$src_path" "$dst_path"
            echo "ins: source and target are identical; nothing to install"
            functions -e __ins_is_test_namespace __ins_expected_repo_path
            return 0
        end
    else if test -e "$dst_path"
        echo "ins: target exists but is not a regular file: $dst_path" >&2
        functions -e __ins_is_test_namespace __ins_expected_repo_path
        return 1
    else
        read --prompt-str "ins: $dst_path does not exist. Create it? [y/N] " answer

        switch (string lower -- "$answer")
            case y yes
            case '*'
                echo "ins: cancelled"
                functions -e __ins_is_test_namespace __ins_expected_repo_path
                return 1
        end
    end

    functions -e __ins_is_test_namespace __ins_expected_repo_path

    # ins owns the commit it creates for TARGET. Do not silently fold some
    # pre-existing staged version of that same path into this installation.
    command git -C "$git_root" diff --cached --quiet -- "$repo_path"
    set -l cached_status $status

    if test $cached_status -eq 1
        echo "ins: target already has staged changes; refusing: $repo_path" >&2
        return 1
    else if test $cached_status -ne 0
        echo "ins: could not inspect staged state for target: $repo_path" >&2
        return 1
    end

    set -l unmerged (command git -C "$git_root" ls-files -u -- "$repo_path")
    if test (count $unmerged) -gt 0
        echo "ins: target has unresolved Git conflicts: $repo_path" >&2
        return 1
    end

    mkdir -p old
    or return 1

    # Preserve the downloaded revisioned artifact exactly as named.
    # This is archival only. Git operates exclusively on repo_path below.
    set -l artifact_name (basename "$src_path")
    set -l archive_path old/"$artifact_name"

    if test -e "$archive_path"
        echo "ins: archive already exists: $archive_path" >&2
        return 1
    end

    command cp -- "$src_path" "$archive_path"
    or begin
        echo "ins: failed to archive source" >&2
        return 1
    end

    command mv -- "$src_path" "$dst_path"
    or begin
        echo "ins: failed to install source" >&2
        command rm -f -- "$archive_path"
        return 1
    end

    echo "installed: $dst_path"
    echo "archived:  $archive_path"

    # Stage the installed TARGET and immediately prove that the index differs
    # from HEAD for that exact path.
    command git -C "$git_root" add -- "$repo_path"
    or begin
        echo "ins: ERROR: installed target could not be staged: $repo_path" >&2
        echo "ins: target remains installed; archive remains in old/" >&2
        return 1
    end

    command git -C "$git_root" diff --cached --quiet -- "$repo_path"
    set cached_status $status

    if test $cached_status -eq 0
        echo "ins: ERROR: git add produced no staged change for: $repo_path" >&2
        echo "ins: target remains installed; inspect repository state" >&2
        return 1
    else if test $cached_status -ne 1
        echo "ins: ERROR: could not verify staged target: $repo_path" >&2
        return 1
    end

    echo "staged:    $repo_path"

    set -l before_head (command git -C "$git_root" rev-parse HEAD)
    or begin
        echo "ins: ERROR: could not read repository HEAD" >&2
        return 1
    end

    set -l commit_message (string join '' 'Install ' "$artifact_name" ' as ' "$repo_path")

    # An explicit pathspec plus --only commits TARGET while leaving unrelated
    # staged work untouched.
    command git -C "$git_root" commit --only -m "$commit_message" -- "$repo_path"
    or begin
        echo "ins: ERROR: commit failed: $repo_path" >&2
        echo "ins: installed target is intentionally LEFT STAGED for inspection/retry" >&2
        return 1
    end

    set -l after_head (command git -C "$git_root" rev-parse HEAD)
    or begin
        echo "ins: ERROR: commit returned success but HEAD cannot be read" >&2
        return 1
    end

    if test "$before_head" = "$after_head"
        echo "ins: ERROR: commit returned success but HEAD did not advance" >&2
        return 1
    end

    set -l committed_paths (command git -C "$git_root" diff-tree --no-commit-id --name-only -r "$after_head" -- "$repo_path")
    if not contains -- "$repo_path" $committed_paths
        echo "ins: ERROR: new commit does not contain installed target: $repo_path" >&2
        echo "ins: commit: $after_head" >&2
        return 1
    end

    # TARGET must now be exactly represented by HEAD and have no residual
    # staged state.
    if not command git -C "$git_root" diff --quiet HEAD -- "$repo_path"
        echo "ins: ERROR: installed target differs from newly created commit: $repo_path" >&2
        return 1
    end

    if not command git -C "$git_root" diff --cached --quiet -- "$repo_path"
        echo "ins: ERROR: target remains staged after commit: $repo_path" >&2
        return 1
    end

    set -l short_head (command git -C "$git_root" rev-parse --short HEAD)
    echo "committed: $repo_path ($short_head)"
end
