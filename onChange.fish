function onChange --description 'Watch files/directories and run the final argument when they change'
    if test (count $argv) -lt 2
        echo "usage: onChange PATH [PATH ...] 'COMMAND'" >&2
        return 2
    end

    set -l action $argv[-1]
    set -e argv[-1]
    set -l paths $argv

    for path in $paths
        if not test -e "$path"
            echo "onChange: does not exist: $path" >&2
            return 1
        end
    end

    function __onChange_state --no-scope-shadowing
        for path in $paths
            if test -d "$path"
                find "$path" -type f -printf '%p\t%T@\t%s\n' 2>/dev/null
            else if test -e "$path"
                stat --printf='%n\t%Y\t%s\n' "$path" 2>/dev/null
            else
                echo "$path	MISSING"
            end
        end | sort | sha256sum | string split ' ' | head -n 1
    end

    set -l previous (__onChange_state)

    echo "onChange: watching:"
    for path in $paths
        echo "  $path"
    end
    echo "onChange: action: $action"

    while true
        sleep 0.25

        set -l current (__onChange_state)

        if test "$current" != "$previous"
            set previous $current

            echo
            echo "onChange: FIRING "(date '+%H:%M:%S')" → $action"

            eval "$action"

            set previous (__onChange_state)
        end
    end
end
