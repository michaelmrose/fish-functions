function stripsign
	if startswith-special +- $argv
        cdr $argv
    else
        echo $argv
    end
end
