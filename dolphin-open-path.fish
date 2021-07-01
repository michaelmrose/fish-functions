# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path_dolphin-open.fish @ line 2
function dolphin-open-path
	while read -l line
		qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$line false
	end
end
