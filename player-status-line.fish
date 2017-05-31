function player-status-line
	set title (smarter-ctl metadata title)
  set artist (smarter-ctl metadata artist)

  if exists $title
    set metadata $title by $artist
  else
    set metadata None
  end
  set val (smarter-ctl status) 2> /dev/null
  switch $val
    case Paused
      set symbol "  "
    case Playing
      set symbol "  "
    case Stopped
      set symbol ""
  end
  echo $symbol $metadata
end
