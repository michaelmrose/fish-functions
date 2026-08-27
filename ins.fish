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

    function __ins_test_namespace --argument-names namespace
        if string match -q '*-test' -- "$namespace"
            return 0
        end

        for component in (string split '.' -- "$namespace")
            if test "$component" = test
                return 0
            end
        end

        return 1
    end

    function __ins_expected_namespace --argument-names repo_relative_path
        set -l relative_path

        if string match -q 'src/*' -- "$repo_relative_path"
            set relative_path (string replace -- 'src/' '' "$repo_relative_path")
        else if string match -q 'test/*' -- "$repo_relative_path"
            set relative_path (string replace -- 'test/' '' "$repo_relative_path")
        else
            return 1
        end

        set relative_path (string replace -r '\.(clj|cljc|cljs)$' '' -- "$relative_path")
        set relative_path (string replace -a '/' '.' -- "$relative_path")
        string replace -a '_' '-' -- "$relative_path"
    end

    set -l dst_existed false
    set -l src_ns ''

    # Source/test namespaces are checked against the exact installation path
    # even when TARGET does not exist yet. This closes the old new-file hole.
    if string match -rq '^(src|test)/.*\.(clj|cljc|cljs)$' -- "$repo_path"
        set src_ns (nsof "$src_path")
        or begin
            echo "ins: cannot determine source namespace: $src_path" >&2
            functions -e __ins_test_namespace __ins_expected_namespace
            return 1
        end

        set src_ns (string trim -- "$src_ns")
        set -l expected_ns (__ins_expected_namespace "$repo_path")
        or begin
            echo "ins: cannot derive namespace from target path: $repo_path" >&2
            functions -e __ins_test_namespace __ins_expected_namespace
            return 1
        end

        if test "$src_ns" != "$expected_ns"
            echo "ins: namespace/path mismatch" >&2
            echo "  source namespace: $src_ns" >&2
            echo "  target requires:  $expected_ns" >&2
            echo "  target:           $repo_path" >&2
            functions -e __ins_test_namespace __ins_expected_namespace
            return 1
        end

        # Production source must never carry a test namespace. The test tree,
        # however, may legitimately contain helper namespaces that are not
        # themselves named *-test; exact namespace/path agreement is enough
        # there.
        if string match -q 'src/*' -- "$repo_path"
            if __ins_test_namespace "$src_ns"
                echo "ins: refusing to install a test namespace under src/" >&2
                echo "  namespace: $src_ns" >&2
                echo "  target:    $repo_path" >&2
                functions -e __ins_test_namespace __ins_expected_namespace
                return 1
            end
        end
    end

    if test -f "$dst_path"
        set dst_existed true

        # Preserve the historical namespace-equality guard for files outside
        # src/test as well (for example script namespaces).
        set -l existing_src_ns "$src_ns"
        if test -z "$existing_src_ns"
            set existing_src_ns (nsof "$src_path")
            or begin
                echo "ins: cannot determine source namespace: $src_path" >&2
                functions -e __ins_test_namespace __ins_expected_namespace
                return 1
            end
            set existing_src_ns (string trim -- "$existing_src_ns")
        end

        set -l dst_ns (nsof "$dst_path")
        or begin
            echo "ins: cannot determine target namespace: $dst_path" >&2
            functions -e __ins_test_namespace __ins_expected_namespace
            return 1
        end
        set dst_ns (string trim -- "$dst_ns")

        if test "$existing_src_ns" != "$dst_ns"
            echo "ins: namespace mismatch" >&2
            echo "  source: $existing_src_ns" >&2
            echo "  target: $dst_ns" >&2
            functions -e __ins_test_namespace __ins_expected_namespace
            return 1
        end

        if command cmp -s -- "$src_path" "$dst_path"
            echo "ins: source and target are identical; nothing to install"
            functions -e __ins_test_namespace __ins_expected_namespace
            return 0
        end
    else if test -e "$dst_path"
        echo "ins: target exists but is not a regular file: $dst_path" >&2
        functions -e __ins_test_namespace __ins_expected_namespace
        return 1
    else
        read --prompt-str "ins: $dst_path does not exist. Create it? [y/N] " answer

        switch (string lower -- "$answer")
            case y yes
            case '*'
                echo "ins: cancelled"
                functions -e __ins_test_namespace __ins_expected_namespace
                return 1
        end
    end

    functions -e __ins_test_namespace __ins_expected_namespace

    # Do not overwrite pre-existing staged work for the target. `ins` owns the
    # commit it creates, so the target must not already have index state that
    # belongs to some other pending commit.
    if not command git -C "$git_root" diff --cached --quiet -- "$repo_path"
        echo "ins: target already has staged changes; refusing to overwrite them: $repo_path" >&2
        return 1
    end

    set -l unmerged (command git -C "$git_root" ls-files -u -- "$repo_path")
    if test (count $unmerged) -gt 0
        echo "ins: target has unresolved Git conflicts: $repo_path" >&2
        return 1
    end

    mkdir -p old
    or return 1

    # Preserve the downloaded revisioned artifact exactly as named. This copy
    # is archival only; the Git commit below contains TARGET, never this file.
    set -l archive_path old/(basename "$src_path")

    if test -e "$archive_path"
        echo "ins: archive already exists: $archive_path" >&2
        return 1
    end

    set -l backup_path ''
    if test "$dst_existed" = true
        set backup_path (command mktemp)
        or return 1

        command cp -p -- "$dst_path" "$backup_path"
        or begin
            command rm -f -- "$backup_path"
            return 1
        end
    end

    command cp -- "$src_path" "$archive_path"
    or begin
        if test -n "$backup_path"
            command rm -f -- "$backup_path"
        end
        echo "ins: failed to archive source" >&2
        return 1
    end

    command mv -- "$src_path" "$dst_path"
    or begin
        echo "ins: failed to install source" >&2
        command rm -f -- "$archive_path"
        if test -n "$backup_path"
            command rm -f -- "$backup_path"
        end
        return 1
    end

    command git -C "$git_root" add -- "$repo_path"
    or begin
        echo "ins: failed to stage installed target; rolling installation back" >&2

        command git -C "$git_root" reset -q HEAD -- "$repo_path" >/dev/null 2>&1
        command rm -f -- "$dst_path"

        if test "$dst_existed" = true
            command cp -p -- "$backup_path" "$dst_path"
        end

        command mv -- "$archive_path" "$src_path"

        if test -n "$backup_path"
            command rm -f -- "$backup_path"
        end

        return 1
    end

    set -l artifact_name (basename "$src_path")
    set -l commit_message (string join '' 'Install ' "$artifact_name" ' as ' "$repo_path")

    # --only plus an explicit pathspec guarantees unrelated staged work is not
    # swept into this mechanical revision commit.
    command git -C "$git_root" commit --only -m "$commit_message" -- "$repo_path"
    or begin
        echo "ins: commit failed; rolling installation back" >&2

        command git -C "$git_root" reset -q HEAD -- "$repo_path" >/dev/null 2>&1
        command rm -f -- "$dst_path"

        if test "$dst_existed" = true
            command cp -p -- "$backup_path" "$dst_path"
        end

        command mv -- "$archive_path" "$src_path"

        if test -n "$backup_path"
            command rm -f -- "$backup_path"
        end

        return 1
    end

    if test -n "$backup_path"
        command rm -f -- "$backup_path"
    end

    # A successful install must leave the installed target exactly represented
    # by HEAD. Hooks or unusual Git configuration must not silently leave the
    # target different from what was committed.
    if not command git -C "$git_root" diff --quiet HEAD -- "$repo_path"
        echo "ins: WARNING: target differs from the commit just created: $repo_path" >&2
        echo "ins: inspect Git hooks/configuration before continuing" >&2
        return 1
    end

    echo "installed: $dst_path"
    echo "archived:  $archive_path"
    echo "committed: $repo_path"
end
