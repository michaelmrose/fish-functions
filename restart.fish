function restart
    echo i am (id -gn)
    if string match (id -gn) root
        systemctl restart $argv
    else
        systemctl --user restart $argv
    end
end
