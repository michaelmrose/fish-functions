function update-now-playing
	while not pgrep clementine > /dev/null
    sleep 1;
  end
  update-playing-py3.py
end
