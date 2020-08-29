# Defined in /usr/home/michael/.config/fish/buffer/msg.fish @ line 2
function msg
	# twmnc -d 2000 --id 1 --content "$argv"
    notify-send -t 3000 $argv
end
