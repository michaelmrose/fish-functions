function play-list
	set count 0
    for i in $argv
        play-music $i
    end
end
