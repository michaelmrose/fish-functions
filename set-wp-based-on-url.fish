# Defined in /home/michael/.config/fish/buffer/set-wp-based-on-url.fish @ line 2
function set-wp-based-on-url
	set url (xclip -selection clipboard -o)
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
