function em-status
	if pgrep emerge > /dev/null
        set res (sudo genlop -ntc 2> /dev/null)
        if exists $res (sudo genlop -ntc 2> /dev/null)
            set output (echo $res | condense_spaces)
        end
    else
        return 1
    end
    echo $output
    # if startswith ! $output
    #     return 1
    # else
    #     echo $output
    # end
end
