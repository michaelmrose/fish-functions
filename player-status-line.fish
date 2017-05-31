function player-status-line
	set playerStatus (smarter-ctl status)
	if contains $playerStatus Playing Paused
    set title (smarter-ctl metadata title)
    set artist (smarter-ctl metadata artist)
    set symbol (match-lists $playerStatus "Playing Paused" " " "")
    echo $symbol $title by $artist
  else
    echo None
  end
end
