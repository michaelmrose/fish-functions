function zf
	switch $argv[1]
        case -q
            zf get -H $argv[2..-1] | condense_spaces | cut -d " " -f3
        case "*"
            sudo zfs $argv
        end
end
