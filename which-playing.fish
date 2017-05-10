function which-playing
	for player in (playerctl -l)
    if match (playerctl -p $player status) Playing
      echo $player
    end
  end
end
