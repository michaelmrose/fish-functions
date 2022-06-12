function focus-workspace-group
    set n $argv[1]
    set workspaces (cat ~/.config/i3/groups/$n)
    for w in $workspace_group_$n
	i3-msg workpace $w
    end
end
