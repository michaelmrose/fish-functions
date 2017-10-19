# Defined in /home/michael/.config/fish/buffer/vi3_take-window-to-workspace.fish @ line 2
function vi3_take-window-to-workspace
	# er vi3op
    # update-op-status
    # set w $argv(getwsstack $argv)
    i3-msg move container to workspace $argv
    vi3_workspace $argv
    # signal-i3blocks pages
end
