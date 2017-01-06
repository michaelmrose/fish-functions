function down-workspace
	set next (math (get-workspace-index) - 1)
	vi3_workspace (get-focused-workspace)$next
end
