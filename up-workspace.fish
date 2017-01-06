function up-workspace
	set current (get-workspace-index)
	set next (bounded  (math "$current + 1")1 5)
  echo c is $current n is $next
	set com vi3_workspace (get-workspace-letter)$next
  eval $com
	# vi3_workspace (get-workspace-letter)$next
  set-workspace-index $next
end
