# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 2
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
    for i in (get-wacom-ids)
      xinput map-to-output $i eDP1 2> /dev/null
    end
end
