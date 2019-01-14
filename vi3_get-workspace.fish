# Defined in /home/michael/.config/fish/buffer/gws_tws_vi3_get-workspace_vi3_.fish @ line 12
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
