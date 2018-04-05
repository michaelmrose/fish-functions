# Defined in /home/michael/.config/fish/buffer/restore-workspaces.fish @ line 2
function restore-workspaces
	for i in $workspaces
        ws $i
    end
 # vi3_workspace $activeWorkspace
 # ws $workspaces $activeWorkspace
end
