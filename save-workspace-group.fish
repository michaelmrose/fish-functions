function save-workspace-group
    set n $argv[1]
    set workspaces (get-ws-info get name where visible is true|quote)
    set focused (get-ws-info get name where focused is true)
    set -U workspace_group_$n $workspaces
    set val workspace_group_{$n}_focused
    echo val is $val
    echo set -U  $val $focused
end
