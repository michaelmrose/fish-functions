# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path_dolphin-open.fish @ line 7
function dolphin-pick-with-z
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
	kitty -1 -e zoxide query -i > /tmp/zoxideres
	dolphin-open-path $pid (cat /tmp/zoxideres)
end
