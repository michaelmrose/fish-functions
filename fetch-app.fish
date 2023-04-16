function fetch-app
    set criteria class
	set appkeyValue (appkey $argv|choose 0) > /dev/null
	switch $appkeyValue
		case emacsclient
			set val Emacs
		case qbittorrent
			set val qBittorrent
		case mpv
			set val mpv
		case kitty
			set val kitty
		case jfin
			set val mpv
		case '*'
			set val (capitalize $appkeyValue)
	end

	set vis (get-ws-info get name where visible is true)
	set focused (get-ws-info get name where focused is true)
	i3-msg "[$criteria=$val]" focus
	i3-msg move window to workspace $vis
	ws $vis $focused

end
