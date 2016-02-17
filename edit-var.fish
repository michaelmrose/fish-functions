function edit-var
	set lst (println $$argv)
    for i in (range (count $lst))
        echo $lst[$i]
        vared lst[$i]
    end
    set $argv $lst
end
