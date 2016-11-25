function steampick
	for i in (steamapps)                                                           
    cutlastn " " 2- $i
  end | rofi -dmenu -p "pick a game" | xargs ff steamplay
end
