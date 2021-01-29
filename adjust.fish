# Defined in /usr/home/michael/.config/fish/buffer/adjust.fish @ line 2
function adjust
		sndio.clj adjust $argv[1] $argv[2]
		signal-i3blocks 2
end
