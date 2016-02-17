function vi3_move-window-to-workspace
	i3-msg move container to workspace $argv
    er vi3op
    update-op-status
end
