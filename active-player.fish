function active-player
	set players (playerctl -l)
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $active $player
    end
  end
end
