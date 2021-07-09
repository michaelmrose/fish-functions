# Defined in /usr/home/michael/.config/fish/buffer/reset.fish @ line 1
function reset
	stop $argv
	sleep 3
	start $argv
end
