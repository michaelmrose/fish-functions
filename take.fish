function take
	set lst $argv[2..-1]
    for i in (range (lesserof $argv[1] (count $lst)))
        echo $lst[$i]
    end
end
