function toggle-playback
	set playing (alternatively which-playing $lastPlaying)
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
