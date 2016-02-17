function get-youtube-html
	youtube-dl --netrc --flat-playlist -j "$argv" | jq .
end
