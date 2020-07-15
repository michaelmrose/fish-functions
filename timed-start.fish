# Defined in /home/michael/.config/fish/buffer/timed-start.fish @ line 2
function timed-start
    if test (count $argv) -gt 1
        set app $argv[1..-2]
        set class $argv[-1]
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
