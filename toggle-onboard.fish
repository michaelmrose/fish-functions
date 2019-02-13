# Defined in /home/michael/.config/fish/buffer/toggle-onboard.fish @ line 1
function toggle-onboard
	if pgrep onboard
        killall onboard
    else
        onboard &
    end
end
