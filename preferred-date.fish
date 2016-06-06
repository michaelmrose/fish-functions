function preferred-date
	echo (date '+%m-%d-%y' | sed 's/0\([0-9]\)//g')-(date '+%R')
end
