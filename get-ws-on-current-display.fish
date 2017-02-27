function get-ws-on-current-display
	set names (i3-msg -t get_workspaces|jq .[].name)
  set outputs (i3-msg -t get_workspaces|jq .[].output)
  set display (i3-msg -t get_workspaces|jq .[]|jq -r "select(.focused == true).output")
  set res ""
  set n 1
  for i in $names
    echo i is $i and opn is $outputs[$n] and n is $n
    if matches $outputs[$n] $display
      set res $res $i
    end
  inc n
  end
  p $res
end
