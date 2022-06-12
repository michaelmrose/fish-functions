function save-workspace-group
    set focused (get-ws-info get name where focused is true| quote)
    set other_workspaces (get-ws-info get name where visible is true|quote|exclude $focused)
    echo $other_workspaces $focused > ~/.config/i3/groups/$argv[1]
end
