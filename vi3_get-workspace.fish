function vi3_get-workspace
	er vi3op
    update-op-status
    set ws (get-focused-workspace)
    checkpoint-ws
    vi3_workspace $argv
    vi3_select-all-in-workspace
    vi3_take-back
    restore-ws
    ws $ws
end
