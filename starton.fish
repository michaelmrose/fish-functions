function starton --argument ws command class
  set json "{\"swallows\": [{\"class\": \"^$class\$\"}], \"type\": \"con\"}"
  # set workspaces (i3-msg -t get_workspaces)
  # set active ( i3-msg -t get_workspaces|jq -r '.[]| select(.visible == true).name')
  # set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
  # set active (get-ws-info get name where visible = true) 
  # set focused (get-ws-info get name where focused = true) 
  set workspaces (get-ws-info get name where focused = true) (get-ws-info get name where visible = true) 
  i3-msg workspace $ws, append_layout (echo $json|psub), exec "fish -c $command"
  map ws $workspaces
end
