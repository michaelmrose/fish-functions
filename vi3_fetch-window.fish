function vi3_fetch-window
	er vi3op
    update-op-status
    save-workspaces
    focus-app $argv
    vi3_take-back
    restore-workspaces
end
