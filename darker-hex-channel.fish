# Defined in /usr/home/michael/.config/fish/buffer/darker-hex-channel.fish @ line 2
function darker-hex-channel
		# echo (math  3 * (math (hextodec 0x$argv) / 4))
		dectohex (math 7 \* (math (hextodec 0x$argv) /  8))| cut -c 4-
end
