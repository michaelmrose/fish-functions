function ins
    if test (count $argv) -ne 2
        echo "usage: ins SRC TARGET" >&2
        return 2
    end

    set -l src_path $argv[1]
    set -l dst_path $argv[2]
    set -l dst_existed false

    if not test -f "$src_path"
        echo "ins: source does not exist: $src_path" >&2
        return 1
    end

    set -l dst_dir (dirname "$dst_path")

    if not test -d "$dst_dir"
        echo "ins: target directory does not exist: $dst_dir" >&2
        return 1
    end

    # The installed target must live in a Git repository.
    set -l git_root (command git -C "$dst_dir" rev-parse --show-toplevel 2>/dev/null)
    or begin
        echo "ins: target is not inside a Git repository: $dst_path" >&2
        return 1
    end

    # Resolve the target path relative to its repository.
    set -l abs_dst (realpath -m "$dst_path")
    set -l repo_prefix "$git_root/"

    if not string match -q -- "$repo_prefix*" "$abs_dst"
        echo "ins: target is outside Git repository: $dst_path" >&2
        return 1
    end

    set -l repo_path (string replace -- "$repo_prefix" "" "$abs_dst")

    # If destination exists, verify namespace equality.
    if test -f "$dst_path"
        set dst_existed true

        set -l src_ns (nsof "$src_path")
        or return 1

        set -l dst_ns (nsof "$dst_path")
        or return 1

        if test "$src_ns" != "$dst_ns"
            echo "ins: namespace mismatch" >&2
            echo "  source: $src_ns" >&2
            echo "  target: $dst_ns" >&2
            return 1
        end
    else if test -e "$dst_path"
        echo "ins: target exists but is not a regular file: $dst_path" >&2
        return 1
    else
        read --prompt-str "ins: $dst_path does not exist. Create it? [y/N] " answer

        switch (string lower -- "$answer")
            case y yes
            case '*'
                echo "ins: cancelled"
                return 1
        end
    end

    mkdir -p old
    or return 1

    # Preserve the downloaded revisioned artifact exactly as named.
    # This archival copy is NOT the file committed by ins.
    set -l archive_path old/(basename "$src_path")

    if test -e "$archive_path"
        echo "ins: archive already exists: $archive_path" >&2
        return 1
    end

    command cp -- "$src_path" "$archive_path"
    or begin
        echo "ins: failed to archive source" >&2
        return 1
    end

    # Install to the EXACT pathname supplied as argument 2.
    command mv -- "$src_path" "$dst_path"
    or begin
        echo "ins: failed to install source" >&2
        command rm -- "$archive_path"
        return 1
    end

    # Stage ONLY the installed target in the repository that owns it.
    command git -C "$git_root" add -- "$repo_path"
    or begin
        echo "ins: installed, but failed to stage target: $dst_path" >&2
        echo "installed: $dst_path"
        echo "archived:  $archive_path"
        return 1
    end

    # Commit ONLY the installed target. Unrelated staged/unstaged work in the
    # repository must not become part of this commit.
    if test "$dst_existed" = true
        set -l commit_message "Update "(basename "$dst_path")
    else
        set -l commit_message "Add "(basename "$dst_path")
    end

    command git -C "$git_root" commit --only -m "$commit_message" -- "$repo_path"
    or begin
        echo "ins: installed and staged, but commit failed: $dst_path" >&2
        echo "installed: $dst_path"
        echo "archived:  $archive_path"
        return 1
    end

    echo "installed: $dst_path"
    echo "archived:  $archive_path"
    echo "committed: $repo_path"
end
