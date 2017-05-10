function toggle-playback
	set players (playerctl -l)
  set active (filter-with-expr is-playing $players)
	set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  echo playerctl -p $playing play-pause
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
