function save-layout
	i3-save-tree --workspace (get-focused-workspace)   > ~/workspace.json
end
