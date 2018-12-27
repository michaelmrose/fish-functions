# Defined in /home/michael/.config/fish/buffer/xrr2_xrr3.fish @ line 17
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
    eval $fn
end
