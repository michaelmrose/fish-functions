# Defined in /usr/home/michael/.config/fish/buffer/smarter-diskfree.fish @ line 2
function smarter-diskfree
	if mount| awk '{print $3}' | grep $argv > /dev/null
		echo (df -h $argv)[2]|awk '{print $2}'
	else
		return 1
	end
end
