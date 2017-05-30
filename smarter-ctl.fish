function smarter-ctl
	set active (active-player)
  playerctl -p $active $argv
  set -U lastPlaying $active
end
