function substr
	set e1 (tolower $argv[1])
    set e2 (tolower $argv[2])
    expr match $e1 .\*$e2.\* > /dev/null
end
