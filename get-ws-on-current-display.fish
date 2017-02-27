function get-ws-on-current-display
	set names (i3-msg -t get_workspaces|jq .[].name)
  set outputs (i3-msg -t get_workspaces|jq .[].output)
  set display (i3-msg -t get_workspaces|jq .[]|jq -r "select(.focused == true).output")
  echo $display
end
