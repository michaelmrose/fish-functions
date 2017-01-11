function vi3_kill
	switch $argv
        case "d" #kill workspace
           select-all-in-workspace
           i3-msg kill
        case "a" #all of a given appkey
            vi3_operator-mode kill-all-app
        case "w" #window
            i3-msg kill
        case "e" #all visiable eg everything
            set displays (get-connected-displays)
            for i in $displays
                i3-msg focus output $i
                select-all-in-workspace
                i3-msg kill
            end
        case "u" #other windows on workspace
            i3-msg move container to workspace keep
            vi3_kill d
            vi3_get-workspace keep
        case "t"
            vi3_operator-mode vi3_destroy-workspace
    end
    er vi3op
    update-op-status
end
