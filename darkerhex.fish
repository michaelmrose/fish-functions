# Defined in /usr/home/michael/.config/fish/buffer/darkerhex.fish @ line 1
function darkerhex
		set start \#
		set left (echo $argv|cut -c2-3)
		set middle (echo $argv|cut -c4-5)
		set right (echo $argv|cut -c5-6)

		echo $start$left$middle$right
end
