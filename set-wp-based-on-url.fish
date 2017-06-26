function set-wp-based-on-url
	xdotool key y y
  set url (xclip -o)
  set n (echo "$url" | cut -d / -f5)   
  # set image https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-$n.jpg
  echo u is $url and i is $image
  curl $image > /tmp/wallpaper
  wp /tmp/wallpaper
end
