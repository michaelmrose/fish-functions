function tracks
	clementine -a (rfi match "select tracks: " (beet ls -p $argv) | collect)
end
