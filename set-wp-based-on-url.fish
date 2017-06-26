function set-wp-based-on-url
	xdotool key y y
  set url (xclip -o)
  set image (echo "$url" | cut -d / -f5)   
  echo u is $url and i is $image
  # curl $image > /tmp/wallpaper
  # wp /tmp/wallpaper
end
