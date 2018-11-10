# Defined in /home/michael/.config/fish/buffer/restore-workspaces_save-worksp.fish @ line 2
function restore-workspaces
	for i in $workspaces
        ws $i
    end
    ws activeWorkspace
    # vi3_workspace $activeWorkspace
    # ws $workspaces $activeWorkspace
end
