function destroy-everything
	set displays (get-connected-displays)
    for i in $displays
        i3-msg focus output right
        kill-workspace
    end
end
