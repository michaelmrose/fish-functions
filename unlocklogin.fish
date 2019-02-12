# Defined in /home/michael/.config/fish/buffer/unlocklogin.fish @ line 1
function unlocklogin
	echo -n (rofim -i -dmenu) | gnome-keyring-daemon --unlock
end
