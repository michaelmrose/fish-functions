function add-unique-to-list
	if not contains $argv[1] $argv[2..-1]
        println $argv
    else
        println $argv[2..-1]
    end
end
