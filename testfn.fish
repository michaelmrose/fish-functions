function testfn
	if pstree --show-parents (wmctrl -lxp | grep (ensure-hex (xdotool getactivewindow)) | awk '{print $3}') | grep '\-steam\-'
    i3-msg move window to workspace r
  end
end
