function vi3_take-window-to-workspace
	# er vi3op
    # update-op-status
    # set w $argv(getwsstack $argv)
    # i3-msg move container to workspace (decorate-workspacename $argv)
    i3-msg move container to workspace $argv
    ws $argv
    # vi3_workspace $argv
    # signal-i3blocks pages
end
