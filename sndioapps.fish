# Defined in /usr/home/michael/.config/fish/buffer/sndioapps.fish @ line 1
function sndioapps
		sndioctl|grep '^app'|choose -f / 1:|sd '([a-z]+)[0-9](.*)' '$1$2'|sort -u|sd '([0-1]\.[0-9][0-9])([0-9])' '$1'
end
