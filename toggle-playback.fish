function toggle-playback
	set players (playerctl -l)
  set active (filter-with-expr is-playing $players)
  echo p is $playing a is $active
  # set ins (intersect $lastPLaying $players)
	# set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  if exists $active
    set playing $active
  else if contains $lastPlaying $players
    set playing $lastPlaying
  else
    set playing $players[1]
  end
  
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
