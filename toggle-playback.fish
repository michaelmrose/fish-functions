function toggle-playback
	set players (fish -c playerctl -l)
  p $players
  # set active (filter-with-expr is-playing $players)
	# set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  # fish -c playerctl -p $playing play-pause
  # set -U lastPlaying $playing
end
