# Defined in /home/michael/.config/fish/buffer/starton_startonprep_startonsim.fish @ line 28
function startonprep
	save-workspaces
    set workspaces (odds $argv)
    set apps (evens $argv)
    set json '{"swallows": [{"class": "^#winclass$"}],"type": "con"}'
    set 
    for i in (range (count $workspaces))
        set app $apps[$i]
        set workspace $workspaces[$i]
        set winclass (return-windowclass $app)
        set layout /tmp/(uuidgen)-layout
        p $json | sd \#winclass $winclass > $layout
        i3 workspace $workspace
        i3 append_layout $layout
    end
    restore-workspaces
end
