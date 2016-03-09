function list-youtube-playlist
	condense (apply-to-list "echo www.youtube.com/watch?v=" (get-youtube-html (return-playlist-url $argv) | jq .url))
end
