# Defined in /home/michael/.config/fish/buffer/player-status-line.fish @ line 2
function player-status-line
	set playerStatus (apctl status)
	if contains $playerStatus Playing Paused
      set title (apctl metadata title | cut -c1-20)
      set artist (apctl metadata artist)
      set symbol (match-lists $playerStatus "Playing Paused" " " "")
      echo $symbol $title by $artist
  else
    echo None
  end
end
