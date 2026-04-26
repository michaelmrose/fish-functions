function restart
    if string match (id -gn) root
        systemctl restart $argv
    else
        systemctl --user restart $argv
    end
end
