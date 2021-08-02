# Defined in /usr/home/michael/.config/fish/buffer/smarter-diskfree.fish @ line 2
function smarter-diskfree
	if mount|grep $argv > /dev/null
		df -h $argv|n l2 n3
		else
			return 1
	end
end
