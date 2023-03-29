function starton --argument ws command class
	set json "{\"swallows\": [{\"class\": \"^$class\$\"}], \"type\": \"con\"}"
	set workspaces  (get-ws-info get name where visible = true) (get-ws-info get name where focused = true)
	i3-msg workspace $ws, append_layout (echo $json|psub), exec "fish -c $command"
	map ws $workspaces
end
