# Defined in /usr/home/michael/.config/fish/buffer/darkerhex_darker-hex-channel.fish @ line 2
function darkerhex
		set start \#
		set left (echo $argv|cut -c2-3)
		set middle (echo $argv|cut -c4-5)
		set right (echo $argv|cut -c5-6)

		echo (darker-hex-channel $left)(darker-hex-channel $middle)(darker-hex-channel $right)
end
