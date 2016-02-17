function fn-old
	switch $argv[1]
        case -h
            set fn (functions $argv[2])
            echo $fn | cut -d "'" -f2
        case -i
            funced -i $argv[2]
        case -l
            get-line-of-fn-definition $argv[2]
        case -le
            get-end-line-of-fn-definition $argv[2]
        case -e
            fed $argv[2]
            rl
        case -d
            defined-in $argv[2]
        case "*"
            functions $argv
    end
end
