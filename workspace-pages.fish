# Defined in /home/michael/.config/fish/buffer/workspace-pages.fish @ line 2
function workspace-pages
	set workspaces (i3-msg -t get_workspaces \
    | jq -r '.[] | select(.visible) | .name'| sed "s#[0-9]#$WSPAGE#g")
    for workspace in $workspaces
        echo i3-msg workspace $workspace
    end
end
