function tracks
	# clementine -a (rfi match "select tracks: " (beet ls -p $argv) | collect)
  set tracks (beet ls -p $argv)
  if test (count $tracks) -gt 1
	  clementine -a (rfi match "select tracks: " tracks | collect)
  else
    clementine -a $tracks
  end
end
