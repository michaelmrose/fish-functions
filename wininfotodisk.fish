# Defined in /home/michael/.config/fish/buffer/wininfotodisk.fish @ line 1
function wininfotodisk
	xwininfo -all -id (xdotool getactivewindow) > /tmp/wininfo.txt
end
