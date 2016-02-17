function ensure_valid_index
	set num $argv[1]
    set cnt (count $argv[2..-1])
    if test $num -eq $cnt
        echo 1
    else
        echo (math $num + 1)
    end
end
