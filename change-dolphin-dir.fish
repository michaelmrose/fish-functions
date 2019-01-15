# Defined in /home/michael/.config/fish/buffer/change-dolphin-dir.fish @ line 1
function change-dolphin-dir
	echo "$argv" | clipboard
    sleep 0.1
    xdotool key Control+l
    sleep 0.1
    xdotool key Control+v
    sleep 0.1
    xdotool key Return
end
