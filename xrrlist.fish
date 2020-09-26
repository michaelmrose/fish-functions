# Defined in /usr/home/michael/.config/fish/buffer/xrr_xrrlist.fish @ line 30
function xrrlist
    set prior $argv[1]
    set com "xrandr --output $prior --auto" 
    if test (count $argv) -gt 1
        for d in $argv[2..-1]
            set com "$com --output $d --auto --right-of $prior" 
            set prior $d
        end
    end
    for d in (get-connected-displays)
        if not contains $d $argv
            set com "$com --output  $d --off"
        end
    end
    echo $com
    set -U LASTXRR $com
    set -U ENABLED_DISPLAYS $argv
    eval $com
end
