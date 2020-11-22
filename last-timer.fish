# Defined in /usr/home/michael/.config/fish/buffer/last-timer.fish @ line 1
function last-timer
		bat /tmp/timers-complete.txt|head -1 |each msg
end
