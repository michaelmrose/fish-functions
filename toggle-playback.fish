function toggle-playback
	set players (playerctl -l)
  if not contains $lastPlaying $players
    set -U lastPlaying $players[1]
  end
  
	set playing (alternatively (filter-with-expr is-playing (playerctl -l)) $lastPlaying)
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
