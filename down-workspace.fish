function down-workspace
	set current (get-workspace-index)
	set next (math "$current - 1")
  # echo c is $current n is $next
	set com vi3_workspace (get-workspace-letter)$next
  eval $com
  set-workspace-index $next
end
