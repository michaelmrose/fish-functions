function focus-workspace-group
    set n $argv[1]
    echo n is $n
    echo v is $workspace_group_$n
    for w in $workspace_group_$n
	echo i3-msg workpace $w
    end
    # i3-msg workspace $workspace-group_$n_focused
end
