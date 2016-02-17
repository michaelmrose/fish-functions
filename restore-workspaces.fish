function restore-workspaces
	for i in (reverse $workspaces)
        vi3_workspace $i
    end
end
