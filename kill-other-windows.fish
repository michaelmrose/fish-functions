function kill-other-windows
	set current (get-focused-workspace)
	i3-msg move container to workspace keep
    kill-workspace
    vi3_get-workspace keep
    ws current
end
