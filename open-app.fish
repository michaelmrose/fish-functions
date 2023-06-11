function open-app
	set target (appkey $argv) \&
    eval $target
	# if exists $UNIVERSAL_ARGUMENT
	# 	waituntilfocused (class-of-appkey $argv)
	# 	i3 resize set $NEXT_WINDOW_ORIENTATION $UNIVERSAL_ARGUMENT ppt
	# end
	# erase_variables_for_next_window
end
