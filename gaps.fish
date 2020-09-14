# Defined in /usr/home/michael/.config/fish/buffer/gaps.fish @ line 1
function gaps
    if test (count $argv) -eq 1
        i3 gaps outer current set $argv
        i3 gaps inner current set $argv
    else
        switch $argv[1]
            case o
                i3 gaps outer current set $argv[2]
            case i
                i3 gaps inner current set $argv[2]
        end
    end
end
