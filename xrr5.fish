# Defined in /home/michael/.config/fish/buffer/xrr_xrr2_xrr3_xrr4.fish @ line 102
function xrr5
	if not exists $argv
        xrr5 recall
    else
        switch $argv[1]
            case '*'
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
        end
    end
    echo $fn
    eval $fn
    wp recall
end
