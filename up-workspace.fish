function up-workspace
	set current (get-workspace-index)
	set next (math "$current + 1")
  set next (bounded $next 1 5)
  echo c is $current n is $next
	set com vi3_workspace (get-workspace-letter)$next
  eval $com
	# vi3_workspace (get-workspace-letter)$next
  set-workspace-index $next
end
