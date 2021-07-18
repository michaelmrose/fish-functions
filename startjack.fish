# Defined in /usr/home/michael/.config/fish/buffer/startjack_stopjack.fish @ line 2
function startjack
	stop sndiod
	sleep 1
	jackd -R -d alsa --device=hw:(cat /etc/sv/sndiod/card),0

end
