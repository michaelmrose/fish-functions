# Defined in /home/michael/.config/fish/buffer/restore-workspaces_save-worksp.fish @ line 2
function restore-workspaces
	for i in $workspaces
        vi3_workspace $i
    end
 vi3_workspace $activeWorkspace
end
