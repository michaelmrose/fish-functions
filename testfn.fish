function testfn
	set activewindow (ensure-hex (xdotool getactivewindow))
  set activepid (wmctrl -lxp | grep $activewindow | awk '{print $3}')
  if pstree --show-parents $activepid | grep '\-steam\-'
    i3-msg move window to workspace r
  end
	# if pstree --show-parents (wmctrl -lxp | grep (ensure-hex (xdotool getactivewindow)) | awk '{print $3}') | grep '\-steam\-'
    # i3-msg move window to workspace r
  # end
end
