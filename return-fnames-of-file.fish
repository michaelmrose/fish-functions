function return-fnames-of-file
	cat $argv | g '^function' | cut -d " " -f2
end
