# Defined in /usr/home/michael/.config/fish/buffer/darkerhex_darker-hex-channel.fish @ line 12
function darker-hex-channel
		echo (math  3 * (math (hextodec $argv) / 4))
end
