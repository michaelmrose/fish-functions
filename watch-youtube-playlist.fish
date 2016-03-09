function watch-youtube-playlist
	apply-to-list "echo www.youtube.com/" (get-youtube-html (return-playlist-url $argv) | jq .url) | sed 's# ##g'
end
