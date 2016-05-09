function vi3_setup-keyboard
	killall xcape
  /usr/bin/xcape -t 250 -e 'Control_L=F21'
	/usr/bin/xcape -t 250 -e 'Super_L=F22'
  /usr/bin/xcape -t 250 -e 'Alt_L=F23'
end
