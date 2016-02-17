function splitupwindows
	i3-msg [class=Firefox] move container to workspace 1
    i3-msg [title='^vim'] move container to workspace 2
end
