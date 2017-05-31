function player-status-line
	set status (smarter-ctl status)
	if contains $status Playing Paused
    set title (smarter-ctl metadata title)
    set artist (smarter-ctl metadata artist)
    set metadata $title by $artist
    set symbol (match-lists $status "Playing Paused" " " "")
    echo $symbol $metadata
  else
    echo None
  end
end
