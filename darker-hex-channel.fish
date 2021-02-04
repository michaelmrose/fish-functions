# Defined in /usr/home/michael/.config/fish/buffer/darker-hex-channel.fish @ line 2
function darker-hex-channel
		# echo (math  3 * (math (hextodec 0x$argv) / 4))
		dectohex (math 1 \* (math (hextodec 0x$argv) /  2))| cut -c 4-
end
