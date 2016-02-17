function retrieve-playlist-html
	youtube-dl --netrc --flat-playlist -j "$argv" | jq .
end
