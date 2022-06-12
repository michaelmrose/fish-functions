function focus-workspace-group
    set n $argv[1]
    for w in $workspace_group_$n
	i3-msg workpace $w
    end
    set val workspace_group_{$n}_focused
    echo v is $$val
    # i3-msg workspace $$val
end
