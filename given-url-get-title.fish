function given-url-get-title
	youtube-dl --flat-playlist -j "$argv" | jq .fulltitle
end
