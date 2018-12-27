# Defined in /home/michael/.config/fish/buffer/xrr_xrr2_xrr3_xrr4.fish @ line 81
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
        echo selected is $selected and d is $display
        if not contains $display $selected
            echo conditional false
            set fn $fn --output $display --off
        end
    end
    echo $fn
    # eval $fn
    # wp recall
end
