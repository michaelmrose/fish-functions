function toggle-playback
	set players (playerctl -l)
  for player in $players
    if match (playerctl -p $player status) Playing
      set playing $player
    end
  end
  echo $playing
end
