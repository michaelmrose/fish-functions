function abs
	if greaterthanzero $argv
        echo $argv
    else
        math "$argv - ($argv * 2)"
    end
end
