function kitty-zoxide-query
	kitty -1 ff qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://(zoxide query -i) false
end
