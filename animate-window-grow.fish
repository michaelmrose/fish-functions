function animate-window-grow
    i3-msg floating enable
    i3-msg floating disable
    set sizes 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500
    set size 100
    while test $size -ne 1500
	i3-msg resize set width $size
	set size (math $size + 100)
	sleep 0.0001
    end
    # for size in $sizes
    # 	i3-msg resize set height $size
    # 	i3-msg resize set width $size
    # 	sleep 0.0001
    # end

end
