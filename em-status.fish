function em-status
	if pgrep emerge > /dev/null
        set res (sudo genlop -ntc 2> /dev/null | condense_spaces | cut -d '*' -f1 | trim)
        echo res is $res
        if exists $res
            if startswith ! $res
              return 1
            end
        end
    else
        return 1
    end
    echo $res
    # if startswith ! $output
    #     return 1
    # else
    #     echo $output
    # end
end
