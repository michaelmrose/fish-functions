function now-playing
	while not pgrep clementine
        sleep 1
    end
    sleep 3
    update-now-playing.py &
end
