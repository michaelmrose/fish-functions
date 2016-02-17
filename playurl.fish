function playurl
	set url (echo $argv | cut -d '&' -f1)
    set -U lasturl $url
    mpv "$url"
end
