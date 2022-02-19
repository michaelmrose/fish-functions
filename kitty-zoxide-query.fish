function kitty-zoxide-query
	kity -1 qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://(zoxide query -i) false
end
