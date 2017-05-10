function toggle-playback
	set players (playerctl -l)
	set playing (alternatively which-playing @ intersect lastPlaying players @ $players[1])
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
