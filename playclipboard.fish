function playclipboard
	set url (xclip -o -selection c)
  mpv "$url"
end
