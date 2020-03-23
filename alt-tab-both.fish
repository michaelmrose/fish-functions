# Defined in /home/michael/.config/fish/buffer/alt-tab-both.fish @ line 2
function alt-tab-both
    set active (get-ws-info get name where visible = true)
    set workspaces (seq 9) 0
    i3-msg workspace (next-valid-entry (odds $active) (odds $workspaces ))
    i3-msg workspace (next-valid-entry (evens $active) (evens $workspaces))
end
