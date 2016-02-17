function kill-other-windows
	i3-msg move container to workspace keep
    kill-workspace
    vi3_get-workspace keep
end
