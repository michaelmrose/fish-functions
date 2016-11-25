function steamapps
	for i in /opt/steam/steamapps/common/*/steam_appid.txt 
    echo (echo $i | cut -d / -f6) (cat $i)
  end
end
