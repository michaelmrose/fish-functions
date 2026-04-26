function start
    if string match (id -gn) root
        systemctl start $argv
    else
        systemctl --user start $argv
    end
end
