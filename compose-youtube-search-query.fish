function compose-youtube-search-query
	set p 1
    set query (explode-words $argv[1])

    if test (count $argv) -gt 1

        for i in (getvariables $argv[2..-1])
            set val (explode $i)
            set $val[1] $val[2]
        end
    end
    
    set start 'https://www.youtube.com/results?search_query='
    set end "&page=$p"
    set middle ""
    for i in $query
        set middle {$middle}+$i
    end
    set middle (echo $middle | cut -c 2-)
    echo {$start}{$middle}$end
end
