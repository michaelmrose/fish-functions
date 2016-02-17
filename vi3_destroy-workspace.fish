function vi3_destroy-workspace
	save-workspaces
    vi3_workspace $argv
    vi3_kill d
    restore-workspaces
end
