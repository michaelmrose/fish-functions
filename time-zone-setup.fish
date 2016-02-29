function time-zone-setup
	set zone (rfi match "pick a zone" (find /usr/share/zoneinfo/ -type f))
  sudo ln -s $zone /etc/localtime
  sudo echo (cutlastn / -2 $zone) > /etc/timezone
end
