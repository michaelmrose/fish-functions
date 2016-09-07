function share-mounted
	ssh linda ls /mnt/michael/med 2>&1 | cat - /dev/null
end
