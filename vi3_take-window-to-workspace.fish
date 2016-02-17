function vi3_take-window-to-workspace
	er vi3op
    update-op-status
    i3-msg move container to workspace $argv
    vi3_workspace $argv
end
