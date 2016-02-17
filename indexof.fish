function indexof
	set ndx (math "$argv[1] + 1")
    set cnt 1
    for i in $$argv[3]
        if test $ndx -eq $cnt
            echo $i
            return 0
        else
            inc cnt
        end
    end
end
