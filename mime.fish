function mime
	switch $argv[1]
        case set
            mime-set $argv[2..-1]
        case query
            mimeq $argv[2..-1]
        case type
            mimet $argv[2..-1]
    end
end
