function vi3_setup-keyboard
	killall xcape
	/usr/bin/xcape -t 250 -e 'Super_L=XF86LaunchB'
	/usr/bin/xcape -t 250 -e 'Alt_L=Page_Up'
	/usr/bin/xcape -t 250 -e 'Control_L=Page_Down'
end
