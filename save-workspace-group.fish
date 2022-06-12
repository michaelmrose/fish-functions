function save-workspace-group
    set n $argv[1]
    set workspaces (get-ws-info get name where visible is true)
    set focused (get-ws-info get name where focused is true)
    set -U workspace-group-$n $workspaces
    set -U workspace-group-$n-focus $focused
end
