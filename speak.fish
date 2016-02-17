function speak
	for i in $argv
        ff delayedkey 1 y Return &
        ff delayedkey 4 n Return &
        define $i --audio
        sleep 3
    end
end
