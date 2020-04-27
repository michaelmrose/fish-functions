# Defined in /home/michael/.config/fish/buffer/measure-app-startup_window-exi.fish @ line 2
function measure-app-startup
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
