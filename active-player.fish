function active-player
	set players (playerctl -l)
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $player
    end
  end
  echo $active
end
