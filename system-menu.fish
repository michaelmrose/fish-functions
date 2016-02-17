function system-menu
	set choice (rfi match "logout" "reboot" "shutdown" "new session")
    if exists $choice
        switch $choice
            case "logout"
                i3-msg exit
            case "reboot"
                sudo shutdown -r now
            case "shutdown"
                sudo shutdown -h now
            case "new session"
                new-session
            case "*"
                echo not an option
        end
    end
end
