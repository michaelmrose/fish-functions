function which-playing
	for player in (playerctl -l)
    if match (playerctl -p $player status) Playing
      set players $players $player
    end
  end
  if exists $players
    p $players
  else
    return 1
  end
end
