function return-fnames-of-file
	cat $argv | ag '^function' | cut -d " " -f2
end
