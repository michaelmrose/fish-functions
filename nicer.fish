# Defined in /home/michael/.config/fish/buffer/nicer.fish @ line 1
function nicer
	renice -n -20 -p $argv
end
