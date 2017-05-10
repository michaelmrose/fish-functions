function smarter-ctl
	set players (playerctl -l)
  set active (filter-with-expr is-playing $players)
	set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  playerctl -p $playing $argv
  set -U lastPlaying $playing
end
