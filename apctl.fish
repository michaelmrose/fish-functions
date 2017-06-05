function apctl
	set players (playerctl -l)
  set playing (filter-with-expr is-playing $players | nth 1)
  set previously (containse $lastPlaying $players)
  set first $players[1]
  set active (r $playing $previously $first)

  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
