function smarter-ctl
	set players (playerctl -l)
  # set active (filter-with-expr is-playing $players)
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $active $player
    end
  end
  
  echo p is $players a is $active
	# set playing (alternatively echo $active @ intersect lastPlaying players @ $players[1])
  if exists $active
    set playing $active
  else if contains $lastPlaying $players
    set playing $lastPlaying
  else
    set playing $players[1]
  end
  
  playerctl -p $playing $argv
  set -U lastPlaying $playing
end
