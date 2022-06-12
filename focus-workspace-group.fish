function focus-workspace-group
    set n $argv[1]
    set group workspace_group_$n
    for w in $$group
	echo i3-msg workpace $w
    end
    # i3-msg workspace $workspace-group_$n_focused
end
