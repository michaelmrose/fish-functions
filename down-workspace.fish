function down-workspace
	echo set next (math (get-workspace-index) \- 1)
	set next (math (get-workspace-index) \- 1)
	vi3_workspace (get-focused-workspace)$next
	set var workspaceindex_(get-focused-workspace)
  set value workspaceindex_$current
  set -U $value $next
end
