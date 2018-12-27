# Defined in /home/michael/.config/fish/buffer/xrr2_xrr3_xrr4.fish @ line 36
function xrr4
	set fn xrandr
	  set all (xrandr | grep ' connected' | cut -d ' ' -f1)
    set selected $argv
    for display in $selected
        set fn $fn --auto --output $display
        if exists $prior
            set fn $fn --right-of $prior
        end
        set prior $display
    end
    for display in $all
        if not contains $display $argv
            set fn $fn --off --output $display
        end
    end
    echo $fn
    # eval $fn
    # wp recall
end
