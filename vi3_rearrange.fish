function vi3_rearrange
	save-workspaces
    vi3_workspace $combolist[1]
    vi3_take-window-to-workspace $combolist[2]
    restore-workspaces
end
