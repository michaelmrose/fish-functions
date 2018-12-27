# Defined in /home/michael/.config/fish/buffer/xrr2.fish @ line 16
function xrr3
	set all (xrandr | grep 'connected' | cut -d ' ' -f1)
    for display in $all
        if contains $display $argv
            set fn $fn --auto --output $display
            if exists $prior
                set $fn --right-of $prior
            else
                set prior $display
            end
        else
            set $fn --off --output $display
        end
    end
    echo $fn
end
