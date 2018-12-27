# Defined in /home/michael/.config/fish/buffer/xrr4_xrr5.fish @ line 2
function xrr4
	set fn xrandr
	  set all (xrandr | grep ' connected' | cut -d ' ' -f1)
    set selected $argv
    for display in $selected
        set fn $fn --output $display --auto
        if exists $prior
            set fn $fn --right-of $prior
        end
        set prior $display
    end
    for display in $all
        if not contains $display $selected
            set fn $fn --output $display --off
        end
    end
    echo $fn
    eval $fn
    wp recall
end
