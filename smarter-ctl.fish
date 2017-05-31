function smarter-ctl
	set players (playerctl -l)
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $player
    end
  end
  if not exists $active
    set active $lastPlaying
  end
  echo meta is $argv[2..-1]
  if match $argv[1] metadata
    for entry in $argv[2..-1]
      echo playerctl -p $active metadata $entry
      # set res $res (playerctl -p $active metadata $entry)
    end
    echo $res
  else
    
    playerctl -p $active $argv
    set -U lastPlaying $active
    signal-i3blocks playing
  end
end
