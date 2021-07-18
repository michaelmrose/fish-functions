# Defined in /usr/home/michael/.config/fish/buffer/audacity-jack_startjack_stopja.fish @ line 18
function stopjack
	s killall jackd
	sleep 1
	start sndiod
end
