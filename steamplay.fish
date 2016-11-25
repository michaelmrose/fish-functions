function steamplay
	for i in /opt/steam/steamapps/common/*/steam_appid.txt 
    set games $games (echo $i | cut -d / -f6) (cat $i)
  end
  p $games
end
