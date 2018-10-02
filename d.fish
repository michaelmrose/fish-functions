# Defined in /home/michael/.config/fish/buffer/d.fish @ line 2
function d
	ssh (get-destination) "set -x DISPLAY :0; $argv"
end
