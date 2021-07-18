# Defined in /usr/home/michael/.config/fish/buffer/audacity-jack_startjack_stopja.fish @ line 10
function startjack
	stop sndiod
	sleep 1
	jackd -R -d alsa --device=hw:(cat /etc/sv/sndiod/card),0 &

end
