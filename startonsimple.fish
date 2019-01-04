# Defined in /home/michael/.config/fish/buffer/starton_startonsimple.fish @ line 27
function startonsimple
	set workspace $argv[1]
    set app $argv[2..-1]
    set winclass (return-windowclass $app)
    set layout /tmp/(uuidgen)-layout
    save-workspaces
    set json '{
    "swallows": [
    {
    "class": "^#winclass$"
    }
    ],
    "type": "con"
    }'

    # p $json | sed "s/#winclass/$winclass/g" > $layout
    p $json | sd \#winclass $winclass > $layout
    i3 workspace $workspace
    i3 append_layout $layout
    fish -c "$app" &
    restore-workspaces
end
