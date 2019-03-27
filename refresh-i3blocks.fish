# Defined in /home/michael/.config/fish/buffer/refresh-i3blocks.fish @ line 1
function refresh-i3blocks
	for i in (seq 1 20)
        signal-i3blocks $i
    end
end
