function toggle-playback
	set players (playerctl -l)
  # if not contains $lastPlaying $players
  #   set -U lastPlaying $players[1]
  # end
  # set -U lastPlaying (alternatively (intersect lastPlaying players) $players[1])
	set playing (alternatively which-playing $lastPlaying)
  set playing (alternatively (intersect playing players) $players[1])
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
