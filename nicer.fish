# Defined in /home/michael/.config/fish/buffer/deprio_nicer_nicer-desktop.fish @ line 9
function nicer
	sudo renice -n -20 -p $argv
    sudo ionice -c 1 -p $argv
end
