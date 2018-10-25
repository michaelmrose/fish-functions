# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    set pen (xinput list | nav /wacom /'pen pen' n11 c=2)
    set finger (xinput list | nav /wacom /finger n9 c=2)  
    echo p is $pen f is $finger
    for i in $pen $finger
        xinput map-to-output $i eDP1
    end
end
