# Defined in /home/michael/.config/fish/buffer/measure-app-startup_window-exi.fish @ line 2
function measure-app-startup
    if test (count $argv) -gt 1
        set app $argv[1]
        set class $argv[2]
    else
        set app $argv[1]
        set class $argv[1]
    end
    set start (date +%s)
    $app >/dev/null &
    while true
        if window-exists $class
            set end (date +%s)
        echo (math $end - $start)
    return 0

end
end
end
