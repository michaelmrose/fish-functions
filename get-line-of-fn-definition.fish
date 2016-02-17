function get-line-of-fn-definition
	set fname $argv[1]
    set file (defined-in $fname)
    echo (ag "function $fname -d|function $fname\$" $file | cut -d ":" -f1)
end
