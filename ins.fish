function ins
    if test (count $argv) -ne 2
        echo "usage: ins SRC TARGET" >&2
        return 2
    end

    set -l src $argv[1]
    set -l target $argv[2]

    if not test -f "$src"
        echo "ins: source does not exist: $src" >&2
        return 1
    end

    if test -e "$target"; and not test -f "$target"
        echo "ins: target exists but is not a regular file: $target" >&2
        return 1
    end

    if test -f "$target"
        set -l src_ns (nsof "$src")
        or begin
            echo "ins: nsof failed for source: $src" >&2
            return 1
        end

        set -l target_ns (nsof "$target")
        or begin
            echo "ins: nsof failed for target: $target" >&2
            return 1
        end

        if test "$src_ns" != "$target_ns"
            echo "ins: namespace mismatch" >&2
            echo "  src:    $src_ns" >&2
            echo "  target: $target_ns" >&2
            return 1
        end

        mkdir -p old
        or return 1

        set -l name (basename "$target")
        set -l backup "old/$name"
        set -l n 1

        while test -e "$backup"
            set backup "old/$name.$n"
            set n (math $n + 1)
        end

        mv -- "$target" "$backup"
        or begin
            echo "ins: failed to back up target" >&2
            return 1
        end

        if not cp -- "$src" "$target"
            echo "ins: install failed; restoring backup" >&2
            mv -- "$backup" "$target"
            return 1
        end

        echo "$src -> $target"
        echo "old target -> $backup"
        return 0
    end

    read --prompt-str "ins: $target does not exist. Create it? [y/N] " -l answer

    switch (string lower -- "$answer")
        case y yes
        case '*'
            echo "ins: cancelled"
            return 1
    end

    set -l parent (dirname "$target")
    if not test -d "$parent"
        echo "ins: target directory does not exist: $parent" >&2
        return 1
    end

    cp -- "$src" "$target"
    or begin
        echo "ins: failed to create target" >&2
        return 1
    end

    echo "$src -> $target"
end
