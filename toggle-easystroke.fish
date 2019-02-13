# Defined in /home/michael/.config/fish/buffer/toggle-easystroke.fish @ line 1
function toggle-easystroke
	if pgrep easystroke
        killall easystroke
    else
        easystroke &
    end
end
