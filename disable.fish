function disable
	rm ~/service/enabled/$argv
	stop $argv
end
