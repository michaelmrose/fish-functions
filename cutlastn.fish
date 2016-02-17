function cutlastn
	set sep $argv[1]
    set num $argv[2]
    set lst $argv[3..-1]

    echo $lst | rev | cut -d "$sep" -f$num | rev
end
