# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path.fish @ line 2
function dolphin-open-path
	while read -l line
		# qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$line false
		qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1/actions/replace_location org.qtproject.Qt.QAction.trigger
		xdotool type $line
		xdotool key Return

	end
end
