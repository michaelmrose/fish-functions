# Defined in /usr/home/michael/.config/fish/buffer/startjack_stopjack.fish @ line 16
function audacity-jack
	startjack &
	sleep 2
	audacity
	stopjack &
end
