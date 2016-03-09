function list-youtube-playlist
	apply-to-list "echo https://www.youtube.com/watch\?v=" (get-youtube-html (return-playlist-url $argv) | jq .url) | sed 's# ##g'
end
