function animate-window-grow
    i3-msg floating enable
    i3-msg floating disable
    set sizes 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500
    for size in $sizes
	i3-msg resize set height $size
	i3-msg resize set width $size
	sleep 0.0001
    end

end
