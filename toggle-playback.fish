function toggle-playback
	set players (playerctl -l)
  set playing $lastPlaying
  for player in $players
    if match (playerctl -p $player status) Playing
      set playing $player
    end
  end
  playerctl -p $playing play-pause
  set -U lastPlaying $playing
end
