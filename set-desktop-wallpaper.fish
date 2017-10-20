# Defined in /home/michael/.config/fish/buffer/set-desktop-wallpaper.fish @ line 1
function set-desktop-wallpaper
	scp $bgimage laptop /tmp/laptopwallpaper
  set -x DISPLAY :0
  ssh desktop wallpaper /tmp/laptopwallpaper
end
