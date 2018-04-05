# Defined in /home/michael/.config/fish/buffer/fakelock.fish @ line 1
function fakelock
	save-workspaces
    for display in (get-connected-displays)
        ws (uid);focus output right
    end
    i3-elements trans
    #lock command here
    sleep 5
    restore-workspaces
end
