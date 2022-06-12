function save-workspace-group
    set n $argv[1]
    set workspaces (get-ws-info get name where visible is true|quote)
    set focused (get-ws-info get name where focused is true)
    set focus workspace_group_$n_focus
    set -Ux workspace_group_$n $workspaces
    # set -U $focus $focused
end
