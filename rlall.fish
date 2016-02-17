function rlall
	save-workspaces
    set ids (windows-list | grep -i urxvt | cut -d " " -f1)
    for i in $ids
        focus id $i
        xdotool key r l Return
    end
    restore-workspaces
end
