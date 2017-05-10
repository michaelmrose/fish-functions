function toggle-playback
	set players (playerctl -l)
  if contains $lastPlaying $players
    set playing $lastPlaying
  else
    set playing clementine
  end
  
  for player in $players
    if match (playerctl -p $player status) Playing
      set playing $player
    end
  end

  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
