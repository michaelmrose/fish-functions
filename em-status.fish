function em-status
	if pgrep emerge > /dev/null
        if set res (sudo genlop -ntc 2> /dev/null)
            set output (condense_lines $res)
        end
    else
        return 1
    end
    if startswith ! $output
        return 1
    else
        echo $output
    end
end
