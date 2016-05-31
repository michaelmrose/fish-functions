function toggle-shift-keys
	if [ $shiftkeys = enabled ]
        set shiftkeys disabled
        msg shift keys disabled
        killall xcape
        vi3_setup-keyboard
    else
        set shiftkeys enabled
        msg shift keys enabled
        xcape -e 'Shift_L=XF86Launch1'
        xcape -e 'Shift_R=XF86Launch2'
    end
end
