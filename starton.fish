# Defined in /home/michael/.config/fish/buffer/startiton.fish @ line 34
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
end
