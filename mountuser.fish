# Defined in /usr/home/michael/.config/fish/buffer/mountdroid_mountuser.fish @ line 6
function mountuser
		s mount -t $argv[1] -o umask=0022,gid=(id -g),uid=(id -u) $argv[2..-1]
end
