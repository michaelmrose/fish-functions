function focus-workspace-group
    # set n $argv[1]
    ws (cat ~/.config/i3/groups/$argv|xargs -n1)
    # set workspaces (explode-words (cat ~/.config/i3/groups/$n))
    # for w in $workspaces
    # 	i3-msg workspace $w
    # end
end
