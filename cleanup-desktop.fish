function cleanup-desktop
    for service in ~/service/enabled/*
	stop $service
    end
	sudo umount -fl /mnt/michael
	  kill (pgrep emacs)
    kill (pgrep zeal)
    sleep 1
    rm /tmp/ZealLocalServer
    sleep 1
	  i3-msg [class="."] kill
    countdown 3
end
