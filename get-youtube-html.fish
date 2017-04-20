function get-youtube-html
	youtube-dl --netrc --flat-playlist -j "$argv" --twofactor=fuckyou | jq .
end
