function evaluate-list
	for i in $argv
        if startswith @ $i
            set msg $msg (cdr $i)
        else
            set msg $msg (eval $i)
        end
    end
    echo $msg
end
