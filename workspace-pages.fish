# Defined in /home/michael/.config/fish/buffer/nav-workspace-by-page.fish @ line 1
function workspace-pages
	#get list of active workspaces
    #each like 1.a 1.d replace leading number. with newnumber.
    #and navigate to all workspaces
    set -U WSPAGE $argv
    set workspaces (get-actitive-workspaces | sed "s#[0-9]#$WSPAGE#g")
    for workspace in $workspaces
        echo i3-msg workspace $workspace
    end
end
