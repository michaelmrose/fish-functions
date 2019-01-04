# Defined in /home/michael/.config/fish/buffer/startiton_starton.fish @ line 35
function starton
	set workspace $argv[1]
    set app $argv[2..-1]
    set winclass (return-windowclass $app)
    # set layout /tmp/(uuidgen)-layout
    set layout /tmp/layout
	  set visible (i3-msg -t get_workspaces|jq .[]|jq -r "select(.visible == true).name" )
    set current (i3-msg -t get_workspaces|jq .[]|jq -r "select(.focused == true).name" )
    set json '{
    "swallows": [
    {
    "class": "^#winclass$"
    }
    ],
    "type": "con"
    }'

    p $json | sed "s/#winclass/$winclass/g" > $layout
    i3-msg workspace $workspace
    i3-msg append_layout $layout
    fish -c "$app"
    for ea in $visible $current
        i3-msg workspace $ea
    end
    echo layout is thus
    cat $layout
end
