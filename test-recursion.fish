function test-recursion
	if exists $argv
        set depth (math $argv + 1)
    else
        set depth 1
    end
    echo depth is $depth
    recursive $depth
end
