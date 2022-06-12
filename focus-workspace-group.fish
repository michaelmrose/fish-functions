function focus-workspace-group
    set n $argv[1]
    for w in $workspace_group_$n
	i3-msg workpace $w
    end
    i3-msg workspace $workspace-group_$n_focused
end
