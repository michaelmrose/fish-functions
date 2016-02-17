function xrr-old
	set prefix '--auto --output'
    set direction '--right-of'
    set first $argv[1]
    set rest $argv[2..-1]
    set fn xrandr $prefix $first
    set prior $first
    for output in $rest
        set fn $fn $prefix $output $direction $prior
        set prior $output
    end
    echo $fn
    eval $fn
end
