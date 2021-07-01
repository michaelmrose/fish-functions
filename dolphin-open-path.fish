# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path.fish @ line 1
function dolphin-open-path
	qdbus org.kde.dolphin-18921 /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$argv false
end
