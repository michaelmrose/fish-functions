function apctl
	set players (playerctl -l)
	# set active (r (filter-with-expr is-playing $players) $lastPlaying)
  for player in $players
    if is-playing $player
      set active $player
    end
  end
  if not exists $active
    set active $lastPlaying
  end
  
  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
