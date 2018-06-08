# Defined in /home/michael/.config/fish/buffer/fix-touchscreen.fish @ line 1
function fix-touchscreen
	s rmmod wacom
    s modprobe wacom
 for i in (xinput list | gr wacom |nth 10|cut -d = -f2)
      xinput map-to-output $i eDP1 2> /dev/null
  end
end
