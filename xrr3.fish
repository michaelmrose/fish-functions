# Defined in /home/michael/.config/fish/buffer/xrr_xrr2_xrr3_xrr4.fish @ line 62
function xrr3
	set fn xrandr
	  set all (xrandr | grep 'connected' | cut -d ' ' -f1)
    for display in $all
        if contains $display $argv
            set fn $fn --auto --output $display
            if exists $prior
                set fn $fn --right-of $prior
            else
                set prior $display
            end
        else
            set fn $fn --off --output $display
        end
    end
    echo $fn
end
