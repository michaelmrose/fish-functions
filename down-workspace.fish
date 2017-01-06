function down-workspace
	set current (get-workspace-index)
	set next (math "$current - 1")
	vi3_workspace (get-focused-workspace)$next
	set var workspaceindex_(get-focused-workspace)
  set value workspaceindex_$current
  set -U $value $next
end
