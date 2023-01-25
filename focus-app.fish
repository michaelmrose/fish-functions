function focus-app
	
    set criteria class
	set appkeyValue (appkey $argv|choose 0)
	switch $appkeyValue
		case emacsclient
			set val Emacs
		case kitty
			set val kitty
		case '*'
			set val (capitalize $appkeyValue)
	end
	echo val is $val

	i3-msg "[$criteria=$val]" focus
end
