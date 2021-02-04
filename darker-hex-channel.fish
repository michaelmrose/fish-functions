# Defined in /usr/home/michael/.config/fish/buffer/darkerhex_darker-hex-channel.fish @ line 12
function darker-hex-channel
		# echo (math  3 * (math (hextodec 0x$argv) / 4))
		dectohex (math (hextodec 0x$argv) /  2)| cut -c 3-
end
