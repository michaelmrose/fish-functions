function player-status-line
	if set val (playerctl status) 2> /dev/null
    switch $val
          case Paused
              set symbol "  "
          case Playing
              set symbol "  "
      end
      echo $symbol (playing)
  else
    echo none
  end
end
