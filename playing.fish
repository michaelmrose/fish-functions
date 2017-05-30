function playing
	for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $active $player
    end
  end
  set title (playerctl -p $active metadata title)
  set artist (playerctl -p $active metadata artist)
  if exists $title
    echo $title by $artist
  else
    echo None
  end
end
