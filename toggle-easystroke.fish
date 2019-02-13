# Defined in /home/michael/.config/fish/buffer/toggle-easystroke.fish @ line 2
function toggle-easystroke
	if pgrep easystroke
        killall easystroke
        echo off
    else
        easystroke &
        echo on
  end
end
