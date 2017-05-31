function player-status-line
	set playerStatus (apctl status)
	if contains $playerStatus Playing Paused
    set title (apctl metadata title)
    set artist (apctl metadata artist)
    set symbol (match-lists $playerStatus "Playing Paused" " " "")
    echo $symbol $title by $artist
  else
    echo None
  end
end
