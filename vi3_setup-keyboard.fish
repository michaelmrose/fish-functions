function vi3_setup-keyboard
	killall xcape
  /usr/bin/xcape -t 250 -e 'Control_L=F21'
	/usr/bin/xcape -t 250 -e 'Super_L=F22'
  /usr/bin/xcape -t 250 -e 'Alt_L=F23'
	/usr/bin/xcape -t 250 -e 'Shift_L=XF86Launch1'
  /usr/bin/xcape -t 250 -e 'Shift_R=XF86Launch2'
end
