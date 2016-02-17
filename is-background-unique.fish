function is-background-unique
	not test -f $wallpaperroot/checksums/(checksum-simple $argv)
end
