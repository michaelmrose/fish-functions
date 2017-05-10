function next-player
	if which-playing
    toggle-playback
  end
  set players (playerctl -l)
  next-valid-index (findindex $lastPlaying $players) $players
end
