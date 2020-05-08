# Defined in /home/michael/.config/fish/buffer/timed-start_timed-start2.fish @ line 19
function timed-start2
    function lamb

    if test (count $argv) -gt 1
        set app $argv[1]
        set class $argv[2]
    else
        set app $argv[1]
        set class $argv[1]
    end
    fish -c $app >/dev/null &
    while true
        if window-exists $class
            return 0

        end
    end
    end

    time lamb
end
