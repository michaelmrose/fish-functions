function focus-workspace-group
    set n $argv[1]
    for w in $workspace-group-$n
	i3-msg workpace $w
    end
    i3-msg focus $workspace-group-$n-focused
end
