# Defined in /home/michael/.config/fish/buffer/uritopath.fish @ line 1
function uritopath
	echo $argv | cut -d / -f3-
end
