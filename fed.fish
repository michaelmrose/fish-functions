function fed
	switch $argv[1]
        case "-i"
            funced -i $argv[2..-1]
        case "*"
            set fname $argv[1]
            set file (defined-in $fname)
            set line (ag "function $fname -d|function $fname\$" $file | cut -d ":" -f1)

            nvim +$line $file
    end
end
