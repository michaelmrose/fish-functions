# Defined in /usr/home/michael/.config/fish/buffer/mountdroid.fish @ line 1
function mountdroid
		s mount -t exfat -o umask=0022,gid=(id -g),uid=(id -u) $argv
end
