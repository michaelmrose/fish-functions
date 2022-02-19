function kitty-pick-with-z
    if in-terminal
	set dir (zoxide query -i)
	# spacefm -s set current_dir "$dir"
	# dolphin-open-path $dir
	qdbus org.kde.dolphin-$argv[1] /dolphin/Dolphin_1 org.kde.dolphin.MainWindow.openDirectories file://$dir false
    else
	kitty -1 ff kitty-pick-with-z
    end
end
