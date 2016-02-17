function playing
	set title (playerctl metadata title)
    set artist (playerctl metadata artist)
    if exists $title
        echo $title by $artist
    else
        echo None
    end
end
