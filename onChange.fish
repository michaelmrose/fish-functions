function onChange --description 'Watch files/directories and run a command when they change'
    set -l separator (contains -i -- -- $argv)

    if test -z "$separator"
        echo "usage: onChange PATH [PATH ...] -- COMMAND [ARG ...]" >&2
        return 2
    end

    if test "$separator" -eq 1
        echo "onChange: no paths specified" >&2
        return 2
    end

    if test "$separator" -eq (count $argv)
        echo "onChange: no command specified after --" >&2
        return 2
    end

    set -l path_end (math "$separator - 1")
    set -l command_start (math "$separator + 1")

    set -l paths $argv[1..$path_end]
    set -l action_template $argv[$command_start..-1]

    for path in $paths
        if not test -e "$path"
            echo "onChange: does not exist: $path" >&2
            return 1
        end
    end

    # Replace each literal @ argument with all watched paths.
    set -l action
    for arg in $action_template
        if test "$arg" = '@'
            set -a action $paths
        else
            set -a action "$arg"
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
    set -l action_display (string join ' ' -- (string escape -- $action))

    echo "onChange: watching:"
    for path in $paths
        echo "  $path"
    end
    echo "onChange: action: $action_display"

    while true
        sleep 0.25

        set -l current (__onChange_state)

        if test "$current" != "$previous"
            set previous $current

            echo
            echo "onChange: FIRING "(date '+%H:%M:%S')" → $action_display"

            $action[1] $action[2..-1]
            set -l action_status $status

            echo "onChange: FINISHED "(date '+%H:%M:%S')" ← status $action_status"

            # Don't immediately retrigger if the command itself changed
            # something inside the watched targets.
            set previous (__onChange_state)
        end
    end
end
