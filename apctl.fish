function apctl
	set players (playerctl -l)
	# set active (r (filter-with-expr is-playing $players) $lastPlaying)
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $player
    end
  end
  if not exists $active
    set active $lastPlaying
  end
  # echo a is $active p is $players
  if not contains $active $players
    set active $players[1]
  end

  # set playing (filter-with-expr is-playing $players | nth 1)
  # set previously (containse $lastPlaying $players)
  # set first $players[1]
  # set active (r $playing $previously $first)

  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
