function toggle-playback
	set players (playerctl -l)
	set playing (alternatively which-playing $lastPlaying)
  set playing (alternatively (intersect playing players) $players[1])
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
