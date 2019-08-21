# Defined in /home/michael/.config/fish/buffer/player-status-line.fish @ line 2
function player-status-line
	set playerStatus (apctl status)
	if contains $playerStatus Playing Paused
      set title (apctl metadata title)
      if test (echo $title | wc -c) -gt 30
          set title (echo $title | cut -c1-30)..
      end
      set artist (apctl metadata artist)
      set symbol (match-lists $playerStatus "Playing Paused" " " "")
      set playtime (playtime-status)
      echo $symbol $title by $artist $playtime
  else
    echo None
  end
end
