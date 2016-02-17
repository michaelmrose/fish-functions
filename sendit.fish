function sendit
	if in-terminal
        switch $argv[1]
            case -p
                println $argv[2..-1]
            case "*"
                echo $argv
        end
    else
        switch $argv[1]
            case -p
                msg $argv[2..-1]
            case "*"
                msg $argv
        end
    end
end
