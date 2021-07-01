# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path.fish @ line 2
function dolphin-open-path
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$') 
	echo qdbus org.kde.dolphin-$pid /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$argv false
end
