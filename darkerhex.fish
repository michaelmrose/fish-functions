# Defined in /usr/home/michael/.config/fish/buffer/darkerhex.fish @ line 2
function darkerhex
		set start \#
		set left (echo $argv|cut -c2-3)
		set middle (echo $argv|cut -c4-5)
		set right (echo $argv|cut -c6-7)

		echo (darker-hex-channel $left)(darker-hex-channel $middle)(darker-hex-channel $right)
end
