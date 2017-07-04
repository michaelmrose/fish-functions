function vi3_take-window-to-workspace
	er vi3op
    update-op-status
    set w $argv(getwsstack $argv)
    i3-msg move container to workspace $w
    vi3_workspace $argv
end
