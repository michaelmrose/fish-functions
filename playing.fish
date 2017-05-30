function playing
	set players (playerctl -l)
	for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $player
    end
  end
  echo active is $active
  set title (playerctl -p $active metadata title)
  set artist (playerctl -p $active metadata artist)
  if exists $title
    echo $title by $artist
  else
    echo None
  end
end
