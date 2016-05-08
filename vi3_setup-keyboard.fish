function vi3_setup-keyboard
	killall xcape
	/usr/bin/xcape -t 250 -e 'Super_L=F18'
	/usr/bin/xcape -t 250 -e 'Alt_L=F19'
	/usr/bin/xcape -t 250 -e 'Control_L=F20'
end
