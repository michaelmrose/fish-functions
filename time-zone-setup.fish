function time-zone-setup
	set zone (rfi match "pick a zone" (find /usr/share/zoneinfo/ -type f))
  echo sudo ln -s $zone /etc/localtime
  echo (cutlastn / -2 $zone) \> /etc/timezone
end
