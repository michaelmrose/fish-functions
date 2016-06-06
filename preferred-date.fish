function preferred-date
	date '+%m-%d-%y-%R' | sed 's/0\([0-9]\)//g'
end
