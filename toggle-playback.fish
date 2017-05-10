function toggle-playback
	set players (playerctl -l)
  set active (filter-with-expr is-playing $players)
	set playing (alternatively $active @ intersect lastPlaying players @ $players[1])
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
