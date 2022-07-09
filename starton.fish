function starton
  # set ws (decorate-workspacename $argv[1])
  set ws $argv[1]
  set command $argv[2]
  set class $argv[3]
  set json $argv[4]
  set active ( i3-msg -t get_workspaces|jq -r '.[]| select(.visible == true).name')
  set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
  if not exists $json
	  set json '{"swallows": [{"class": "^#winclass$"}], "type": "con"}'
  end
  set layout /tmp/(uuidgen)-layout
  echo $json  | sed "s/#winclass/$class/g" > $layout
  i3-msg workspace $ws
  i3-msg append_layout $layout
  fish -c $command &
  for w in $active
        i3-msg workspace $w
    end
    i3-msg workspace $focused
	echo additional is $additional
end
