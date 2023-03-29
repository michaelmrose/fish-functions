function starton --argument ws command class
  set json "{\"swallows\": [{\"class\": \"^$class\$\"}], \"type\": \"con\"}"
  set active ( i3-msg -t get_workspaces|jq -r '.[]| select(.visible == true).name')
  set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
  i3-msg workspace $ws
  i3-msg append_layout (echo $json|psub)
  fish -c $command &
  for w in $active $focused
        i3-msg workspace $w
    end
end
