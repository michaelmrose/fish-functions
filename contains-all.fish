function contains-all
	set str $argv[1]
    set words $argv[2..-1]
    for i in $words
        if substr $i $str
        else
            return 1
        end
    end
end
