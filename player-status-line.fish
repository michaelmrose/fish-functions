function player-status-line
	if contains (smarter-ctl status) Playing Paused
    set title (smarter-ctl metadata title)
    set artist (smarter-ctl metadata artist)
    set metadata $title by $artist
    set symbol (match-lists (smarter-ctl status) "Playing Paused" " " "")
    echo $symbol $metadata
  else
    echo None
  end
end
