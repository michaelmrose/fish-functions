function next-player
	smarter-ctl pause
  set players (playerctl -l)
  set -U $lastPLaying (next-valid-index $lastPlaying $players)
  smarter-ctl play
end
