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
  playerctl -p $active $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
