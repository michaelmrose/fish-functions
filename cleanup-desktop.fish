function cleanup-desktop
    for service in ~/service/enabled/*
	stop $service
    end
    i3-msg [class="."] kill
    countdown 3
end
