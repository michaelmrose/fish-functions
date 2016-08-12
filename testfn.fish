function testfn
	set p (xprop -id (xdotool getactivewindow) | grep PID | cut -d ' ' -f3)
  if pstree --show-parents $p | grep '\-steam\-'
    i3-msg move window to workspace r
  end
	# if pstree --show-parents (wmctrl -lxp | grep (ensure-hex (xdotool getactivewindow)) | awk '{print $3}') | grep '\-steam\-'
    # i3-msg move window to workspace r
  # end
end
