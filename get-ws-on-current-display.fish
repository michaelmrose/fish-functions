function get-ws-on-current-display
	# set names (i3-msg -t get_workspaces|jq -r .[].name)
  # set outputs (i3-msg -t get_workspaces|jq .[].output)
  # set display (i3-msg -t get_workspaces|jq .[]|jq -r "select(.focused == true).output")
i3-msg -t get_workspaces|jq -r '.[] | "\(.name)  \(.output)"' | grep (get-focused-display) | cut -d ' ' -f1
  # set res ""
  # set n 1
  # for i in $names
  #   if matches $outputs[$n] $display
  #     set res $res $i
  #   end
  #   set n (++ $n)
  # end
  # p $res
end
