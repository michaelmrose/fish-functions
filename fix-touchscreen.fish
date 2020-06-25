# Defined in /home/michael/.config/fish/buffer/fix-pen_fix-touchscreen.fish @ line 10
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    # set id (xinput list |n /wacom c=2 /pointer n1)
    # set id (xinput list |n /finger n9 c=2)
    # foreach $ids 'xinput map-to-output _ eDP1'
    # echo xinput map-to-output $id eDP1
    sleep 0.5
    for i in (xinput list| n /finger n9 c=2)
        echo fixing id=$i
        xinput map-to-output $i eDP1
    end
end
