function cleanup-desktop
    # echo stopping user services...
    # for service in ~/service/enabled/*
    # sv stop $service
    # end
    # countdown 7
    # echo killing windows
    # i3-msg [class="."] kill
    killall firefox
    stop emacs
    countdown 3
    while test -f /tmp/backup.lock
        sleep 1
    end
end
