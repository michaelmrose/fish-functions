function save-workspace-group
    set n $argv[1]
    set workspaces (get-ws-info get name where visible is true|quote)
    set focused (get-ws-info get name where focused is true)
    set val workspace_group_{$n}_focused
    echo v1 is $val
    echo v2 is $$val
    set -U workspace_group_$n $workspaces
    set -U  workspace_group_{$n} $focused
end
