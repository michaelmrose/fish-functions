# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path.fish @ line 2
function dolphin-open-path
	qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$argv[2..-1] false
end
