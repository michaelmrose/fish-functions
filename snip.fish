function snip
	set cnt 1
    set cutcom "cut "
    set str $argv[1]
    set ops $argv[2..-1]
    for i in $ops
        if divisible $cnt 2
            set cutcom "$cutcom -f$i | cut "
        else
            set cutcom "$cutcom - \"$i\" "
        end
        inc cnt
    end
    set cutcom $cutcom -f1-
    set mycom "echo $str | $cutcom"
    # echo $mycom
    eval $mycom
end
