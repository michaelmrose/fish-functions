function enable
	ln -s ~/service/$argv ~/service/enabled/
	start $argv
end
