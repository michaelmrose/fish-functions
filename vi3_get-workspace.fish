# Defined in /home/michael/.config/fish/buffer/vi3_get-workspace.fish @ line 2
function vi3_get-workspace
	er vi3op
    update-op-status
    set ws (get-focused-workspace)
    checkpoint-ws
    ws $argv
    vi3_select-all-in-workspace
    vi3_take-back
    restore-ws
    ws $ws
end
