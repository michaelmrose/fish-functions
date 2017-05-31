function player-status-line
	set title (smarter-ctl metadata title)
  set artist (smarter-ctl metadata artist)

  if exists $title
    set metadata $title by $artist
  else
    set metadata None
  end
  set val (smarter-ctl status) 2> /dev/null
  set symbol (match-lists (smarter-ctl status) "Playing Paused" " " "")
  echo $symbol $metadata
end
