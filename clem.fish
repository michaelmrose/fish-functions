function clem
	clementine &
  while not pgrep clementine
  end
  sleep 3
  update-now-playing &
end
