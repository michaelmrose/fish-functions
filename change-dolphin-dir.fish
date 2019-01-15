# Defined in /home/michael/.config/fish/buffer/change-dolphin-dir_change-dolp.fish @ line 2
function change-dolphin-dir
	echo "$argv" | clipboard
    sleep 0.1
    xdotool key Control+l
    sleep 0.1
    xdotool key Control+v
    sleep 0.1
    xdotool key Return
end
