# Defined in /usr/home/michael/.config/fish/buffer/xrrlist.fish @ line 1
function xrrlist
    set prior $argv[1]
    set com "xrandr --output $prior --auto " 
    if test (count $argv) -gt 1
        for d in $argv[2..-1]
            set com "$com --output $d --auto --right-of $prior " 
        end
    end
    echo $com
end
