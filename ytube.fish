function ytube
	set a pick
    set pl techtalk
    set q ''
    set p 1
    set f v
    for i in (getvariables $argv)
        set val (splitwords-first-then-rest $i)
        set $val[1] $val[2]
    end
    switch $f
        case v
            set com mpv-wrap
        case a
            set com mpa
    end
    if exists $q
        set playlist_url (compose-youtube-search-query $q p=$p) 
        set -U ytube_last_query $playlist_url
    else
        set playlist_url (return-playlist-url $pl)
    end
    echo $playlist_url
    set data (get-youtube-html $playlist_url)
    set urls (get-urls-from-youtube $data)  
    set titles (get-titles-from-youtube $data)
    echo before rfi
    set choice (rfi match "choose a video: " $titles)
    set ndx (findindex $choice $titles)
    set url $urls[$ndx]
    set playlist $urls[$ndx..-1]
    switch $a
        case pick
            eval $com $url
        case startat
            eval mpv $playlist
    end
end
