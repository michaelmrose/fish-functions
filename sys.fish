function sys
	switch $argv[1]
        case s
            sudo shutdown -h now
        case r
            sudo shutdown -r now
        case l
            i3-msg exit
        case g
            dm-tool switch-to-greeter
    end
end
