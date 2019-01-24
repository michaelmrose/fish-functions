# Defined in /home/michael/.config/fish/buffer/songtitle.fish @ line 2
function songtitle
	playerctl metadata title | cut -c1-20
end
