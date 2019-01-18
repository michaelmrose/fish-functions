# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	
    #   s modprobe wacom
    set id (xinput list |n /wacom c=2 /pointer n1)
    # foreach $ids 'xinput map-to-output _ eDP1'
    xinput map-to-output $id eDP1
end
