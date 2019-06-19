# Defined in /home/michael/.config/fish/buffer/nicer.fish @ line 2
function nicer
	sudo renice -n -20 -p $argv
    sudo ionice -c 1 -p $argv
end
