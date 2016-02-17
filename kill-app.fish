function kill-app
	save-workspaces
    focus-app $argv
    sleep 0.5
    i3-msg kill
    restore-workspaces
    er vi3op
    update-op-status
end
