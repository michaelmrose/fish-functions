function vi3_move-window-to-workspace
	set w $argv(getwsstack $argv)
	i3-msg move container to workspace $w
    er vi3op
    update-op-status
    signal-i3blocks pages
end
