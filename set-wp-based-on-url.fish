function set-wp-based-on-url
	xdotool key y y
  sleep 0.3
  set url (xclip -o)
  set n (echo "$url" | cut -d / -f5)   
  curl $url > /tmp/wallpaper.html
  if grep full/wallhaven-$n.jpg /tmp/wallpaper.html
    set ext jpg
  else
    set ext png
  end
  
  set image https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-$n.$ext
  # echo u is $url and i is $image
  curl $image > /tmp/wallpaper.$ext
  wp /tmp/wallpaper.$ext
end
