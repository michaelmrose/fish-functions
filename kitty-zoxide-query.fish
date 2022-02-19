function kitty-zoxide-query
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
	kitty -1 -e fish -c "qdbus org.kde.dolphin-$pid /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://(zoxide query -i) false"

end
