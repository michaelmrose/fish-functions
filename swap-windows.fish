function swap-windows
	set workspaces (get-ws-in name visible true)
    set outputs (get-ws-in output visible true)
    i3-msg "[workspace=$workspaces[1]] move container to workspace leftws"
    i3-msg "[workspace=$workspaces[2]] move container to workspace rightws"
    i3-msg "[workspace=leftws] move container to output $outputs[2]"
    i3-msg "[workspace=rightws] move container to output $outputs[1]"
end
