function playing
	set active (active-player)
  set title (playerctl -p $active metadata title)
  set artist (playerctl -p $active metadata artist)
  if exists $title
    echo $title by $artist
  else
    echo None
  end
end
