function toggle-playback
	set players (ff playerctl -l)
  set active (filter-with-expr is-playing $players)
  set ins (intersect $lastPLaying $players)
	# set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  if exists $active
    set playing $active
  else if exists $ins
    set playing $ins
  else
    set playing $players[1]
  end
  
  echo p is $playing a is $active
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
