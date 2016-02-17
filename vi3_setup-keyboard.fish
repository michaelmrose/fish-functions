function vi3_setup-keyboard
	killall xcape
	/opt/bin/xcape -t 250 -e 'Super_L=XF86LaunchB'
	/opt/bin/xcape -t 250 -e 'Alt_L=Page_Up'
	/opt/bin/xcape -t 250 -e 'Control_L=Page_Down'
end
