# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    set pen (xinput list | nav /aten /pointer n6 c=2)                                                               ❮ 105 ms ❮ 
    set finger (xinput list | nav /wacom /finger n9 c=2)  
    for i in $pen $finger
        xinput map-to-output $i eDP1
    end
end
