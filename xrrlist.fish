# Defined in /usr/home/michael/.config/fish/buffer/xrrlist.fish @ line 2
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
    eval $com
end
