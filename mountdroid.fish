# Defined in /usr/home/michael/.config/fish/buffer/mountdroid_mountuser.fish @ line 2
function mountdroid
		s mount -t exfat -o umask=0022,gid=(id -g),uid=(id -u) $argv
end
