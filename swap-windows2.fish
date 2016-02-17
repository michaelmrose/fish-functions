function swap-windows2
	set workspaces (get-ws-in name visible true)
    set outputs (get-ws-in output visible true)
    set focused (wininfo id dec)
    i3-msg "[workspace=$workspaces[1]] move container to workspace ph"
    i3-msg "[workspace=$workspaces[2]] move container to output $outputs[1]"
    i3-msg "[workspace=ph] move container to output $outputs[2]"
    focus id $focused
end
