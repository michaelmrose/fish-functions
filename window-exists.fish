# Defined in /home/michael/.config/fish/functions/window-exists.fish @ line 1
function window-exists
	set result (xwininfo -tree -root | grep $argv)
    if exists $result
        return 0
    else
        return 1
    end
end
