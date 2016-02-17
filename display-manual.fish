function display-manual
	if exists $argv
        switch $argv[1]
            case -v
                set com vman
            case -p
                set com pman2
        end
   else
       set com pman2
   end
    eval $com (tolower (return-program-name (winclass)))
    # pman2 (tolower (return-program-name (winclass)))
end
