# Defined in /home/michael/.config/fish/buffer/msecs.fish @ line 1
function msecs
	echo (math (date +%s%N)/1000000)
end
