# Defined in /usr/home/michael/.config/fish/buffer/startjack_stopjack.fish @ line 1
function startjack
	stop sndiod
	sleep 1
	jackd -r -d alsa --device=hw:2,0
end
