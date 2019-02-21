# Defined in /home/michael/.config/fish/buffer/trans-bars.fish @ line 1
function trans-bars
	i3-bars|each transset -i _ $argv
end
