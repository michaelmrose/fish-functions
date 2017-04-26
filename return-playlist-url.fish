function return-playlist-url
	# if startswith @ $argv
  #       compose-youtube-search-query $argv[2..-1]
  #       return 0
  #   end
    set var youtube_playlist_$argv
    if exists $$var
        echo $$var
        return 0
    else
        set val (get-youtube-playlist $argv)
        echo $val
        set -U $var $val
    end
end
