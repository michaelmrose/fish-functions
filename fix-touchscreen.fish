# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    # set pen (xinput list | nav /wacom /'pen pen' n11 c=2)
    # set finger (xinput list | nav /wacom /finger n9 c=2)  
    set ids (xinput list |nav /wacom c=2 /pointer n1)
    for i in $ids
        xinput map-to-output $i eDP1
    end
end
