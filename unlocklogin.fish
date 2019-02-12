# Defined in /home/michael/.config/fish/buffer/unlocklogin.fish @ line 2
function unlocklogin
	echo -n (rofim -i -password -dmenu -p password) | gnome-keyring-daemon --unlock
    killall gnome-keyring-d
end
