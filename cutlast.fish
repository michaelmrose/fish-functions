function cutlast
	set sep $argv[1]
    set lst $argv[2..-1]
    echo $lst | rev | cut -d "$sep" -f1 | rev
end
