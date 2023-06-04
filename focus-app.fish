function focus-app
	
    set criteria class
	set appkeyValue (appkey $argv|choose 0) > /dev/null
	switch $appkeyValue
		case code-oss
			set val "Code - OSS"
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

	i3-msg "[$criteria=$val]" focus
end
