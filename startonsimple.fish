# Defined in /home/michael/.config/fish/buffer/starton_startonprep_startonsim.fish @ line 41
function startonsimple
	set workspace $argv[1]
    set app $argv[2..-1]
    set winclass (return-windowclass $app)
    set layout /tmp/(uuidgen)-layout
    save-workspaces
    set json '{"swallows": [{"class": "^#winclass$"}],"type": "con"}'
    p $json | sd \#winclass $winclass > $layout
    i3 workspace $workspace
    i3 append_layout $layout
    restore-workspaces
    fish -c "$app" &
end
