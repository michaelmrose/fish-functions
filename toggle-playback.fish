function toggle-playback
	set players (ff playerctl -l)
  set active (filter-with-expr is-playing $players)
  # echo (alternatively echo $active @ $players[1])
	set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  echo $playing
  # playerctl -p $playing play-pause
  # set -U lastPlaying $playing
end
