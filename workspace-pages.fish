# Defined in /home/michael/.config/fish/buffer/workspace-pages.fish @ line 2
function workspace-pages
	#get list of active workspaces
    #each like 1.a 1.d replace leading number. with newnumber.
    #and navigate to all workspaces
    set -U WSPAGE $argv
    set workspaces (get-active-workspaces | sed "s#[0-9]#$WSPAGE#g")
    for workspace in $workspaces
        i3-msg workspace $workspace
    end
end
