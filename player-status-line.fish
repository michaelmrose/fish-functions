function player-status-line
	set title (active-playerctl metadata title)
  set artist (active-playerctl metadata artist)

  if exists $title
    set metadata $title by $artist
  else
    set metadata None
  end
	if set val (active-playerctl status) 2> /dev/null
    switch $val
          case Paused
              set symbol "  "
          case Playing
              set symbol "  "
      end
      echo $symbol $metadata
  else
    echo none
  end
end
