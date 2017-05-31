function next-player
	apctl pause
  set players (playerctl -l)
  set -U lastPlaying (next-valid-index $lastPlaying $players)
  apctl play
end
