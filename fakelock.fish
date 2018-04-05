# Defined in /home/michael/.config/fish/buffer/fakelock.fish @ line 2
function fakelock
	save-workspaces
    for display in (get-connected-displays)
        ws (uid);focus output right
    end
    i3-elements hide
    #lock command here
    sleep 2
    restore-workspaces
    i3-elements trans
end
