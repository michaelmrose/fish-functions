# Defined in /home/michael/.config/fish/buffer/starton.fish @ line 2
function starton
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
    p $json
end
