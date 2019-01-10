# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    set ids (xinput list |n /wacom c=2 /pointer n1)
    foreach $ids 'xinput map-to-output _ eDP1'
end
