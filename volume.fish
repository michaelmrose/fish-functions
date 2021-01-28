# Defined in /usr/home/michael/.config/fish/buffer/volume.fish @ line 1
function volume
		sndioctl output.level|choose -f = 1
end
