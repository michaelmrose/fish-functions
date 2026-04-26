function stop
    if string match (id -gn) root
        systemctl stop $argv
    else
        systemctl --user stop $argv
    end
end
