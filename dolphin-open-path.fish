function dolphin-open-path
	while read -l line
		# qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$line false
		qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openFiles file://$line false
		# qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1/actions/replace_location org.qtproject.Qt.QAction.trigger
		# sleep 0.5
		# xdotool type $line
		# sleep 0.1
		# xdotool key Return

	end
end
