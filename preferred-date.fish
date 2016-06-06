function preferred-date
	date '+%m-%d-%y' | sed 's/0\([0-9]\)/\1/g'
end
