# Defined in /home/michael/.config/fish/buffer/i3-elements.fish @ line 22
function i3-bars
	p (xwininfo -all -root |grep i3bar | awk '{print $1}')
end
