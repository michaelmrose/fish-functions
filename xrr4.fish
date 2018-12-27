# Defined in /home/michael/.config/fish/buffer/xrr2_xrr3.fish @ line 34
function xrr4
	set fn xrandr
	  set all (xrandr | grep 'connected' | cut -d ' ' -f1)
    for display in $argv
        set fn $fn --auto --output $display
        if exists $prior
            set fn $fn --right-of $prior
        else
            set prior $display
        end
    end
    for display in $all
        if not contains $display $argv
            set fn $fn --off --output $display
        end
    end
    echo $fn
end
