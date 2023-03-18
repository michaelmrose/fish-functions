function enable
	ln -s ~/service/$argv ~/service/enabled/
	chmod +x ~/service/$argv/run
	start $argv
end
