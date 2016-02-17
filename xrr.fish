function xrr
	set fn xrandr --auto --output $argv[1]
    set prior $argv[1]
    for output in $argv[2..-1]
        set fn $fn --auto --output $output --right-of $prior
        set prior $output
    end
    echo $fn;eval $fn
end
