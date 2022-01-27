function cleanup-desktop
    for service in ~/service/enabled/*
	sv shutdown $service
    end
    i3-msg [class="."] kill
    countdown 3
end
