function enable
	ln -s ~/service/$argv ~/service/enabled/
	start i3vidwall
end
