# Defined in /home/michael/.config/fish/buffer/xrr_xrr2_xrr3_xrr4.fish @ line 47
function xrr2
	set all (xrandr | grep 'connected' | cut -d ' ' -f1)
	  set prior $argv[1]
    set fn xrandr --auto --output $prior
    if test (count $argv) -gt 1
        set rest $argv[2..-1]
        for display in $argv[2..-1]
            set fn $fn --auto --output $display --right-of $prior 
            set prior $display
        end
    end
    eval $fn
end
