# Defined in /usr/home/michael/.config/fish/buffer/startjack_stopjack.fish @ line 10
function stopjack
	s killall jackd
	sleep 1
	start sndiod
end
