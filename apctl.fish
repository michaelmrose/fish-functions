function apctl
	set active (r (filter-with-expr is-playing (playerctl -l)) $lastPlaying)
  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
