function play-music2
	if [ $argv[1] = -e ]
        set criteria $argv[2]
        set query $argv[3..-1]
    else
        set criteria title
        set query $argv
    end
    set tracks (beet ls $query)

    set artist (println $tracks | cut -d "-" -f1 | trim)
    set album (println $tracks | cut -d "-" -f2 | trim)
    set title (println $tracks | cut -d "-" -f3 | trim)
    set c (println $$criteria)

    #clementine -a $tracks
    for i in (range (count $tracks))
        # echo c is $c[$i] and q is $query
        if substr $c[$i] $query
            set queue $queue (echo $artist[$i] $album[$i] $title[$i])
        end
    end
    println $queue
    for i in $queue
    end
    echo playing (count $tracks) tracks
end
