# Defined in /usr/home/michael/.config/fish/buffer/smarter-diskfree.fish @ line 1
function smarter-diskfree
	if mount|grep $argv
		df -h $argv|n l2 n3
	end
end
