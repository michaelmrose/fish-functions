# Defined in /home/michael/.config/fish/buffer/workspace-pages.fish @ line 2
function workspace-pages
	for ws in (i3-msg -t get_workspaces \
    | jq -r '.[] | select(.visible) | .name'| sed "s#[0-9]#$WSPAGE#g")
        echo i3-msg workspace $workspace
    end
end
