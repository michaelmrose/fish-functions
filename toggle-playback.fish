function toggle-playback
	set players (ff playerctl -l)
  p $players
  # set active (filter-with-expr is-playing $players)
	# set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  # playerctl -p $playing play-pause
  # set -U lastPlaying $playing
end
