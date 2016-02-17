function update-now-playing
	while not pgrep clementine > /dev/null
    sleep 1;
  end
  update-now-playing.py &
end
