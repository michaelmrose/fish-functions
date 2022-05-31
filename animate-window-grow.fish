function animate-window-grow
    # need to move window progressively up/left or do something to make this look better
    i3-msg floating enable
    sleep 0.1
    # set monitor (get-ws-info get output where focused is true)
    # switch $monitor
    # 	case HDMI-0
    # 	    set total_width 3360
    # 	    set total_height 1890
    # 	case DP-1
    # 	    set total_width 2940
    # 	    set total_height 1838
    # 	case DP-4
    # 	    set total_width 3940
    # 	    set total_height 2160
    # 	end
    # set sizes 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500

    # set size 100
    # while test $size -lt 
    # 	i3-msg resize set width $size
    # 	# i3-msg move left 200 px
    # 	# i3-msg move up 200 px
    # 	set size (math $size + 50)
    # 	sleep 0.01
    # end
    i3-msg floating disable

end
