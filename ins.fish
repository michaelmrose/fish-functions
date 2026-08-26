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

    # If destination exists, verify namespace equality.
    if test -f "$dst_path"
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

        if not test -d (dirname "$dst_path")
            echo "ins: target directory does not exist: "(dirname "$dst_path") >&2
            return 1
        end
    end

    mkdir -p old
    or return 1

    # Preserve the downloaded revisioned artifact exactly as named.
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

    echo "installed: $dst_path"
    echo "archived:  $archive_path"
end
