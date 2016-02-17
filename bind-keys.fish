function bind-keys
	killall sxhkd
    sxhkd -c ~/keybindings/$argv &
end
