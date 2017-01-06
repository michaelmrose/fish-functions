function up-workspace
	set current (get-workspace-index)
	set next (math "$current + 1")
	vi3_workspace (get-workspace-letter)$next
  set-workspace-index $next
end
