function apctl
	set players (playerctl -l)
	set active (r (filter-with-expr is-playing $players) $lastPlaying)
  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
