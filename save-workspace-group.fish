function save-workspace-group
    set n $argv[1]
    set focused (get-ws-info get name where focused is true| quote)
    set other_workspaces (get-ws-info get name where visible is true|quote|grep --invert-match $focused)
    echo $other_workspaces $focused > ~/.config/i3/groups/$n
end
