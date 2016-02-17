function checksum-simple
	md5sum $argv | cut -d " " -f1
end
