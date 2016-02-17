function better-show-menu
	if exists $vi3op
        fn -d $vi3op
    else
        switch $vi3mode
            case "kill"
                set msg '(a) all appkey (d) workspace (o) others in workspace (w) window (z) all visible'
            case "default"
                set msg '(mod+hjkl change focus (RShift) command (Lshift) switch workspace (mod+a) audio (PrintScreen) screenshot'
                set msg 'default'
            case "command"
                set msg "command"
            case "screenshot"
                set msg 'Screenshot (w)indow (d)isplay (e)verything'
            case "*"
                set msg $vi3mode
       end
    end

end
