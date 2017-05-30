function player-status-line
	set active (active-player)
  set title (playerctl -p $active metadata title)
  set artist (playerctl -p $active metadata artist)

  if exists $title
    set metadata $title by $artist
  else
    set metadata None
  end
	if set val (playerctl -p $active status) 2> /dev/null
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
