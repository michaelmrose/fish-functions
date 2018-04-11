# Defined in /home/michael/.config/fish/buffer/sync-desktop-wallpaper.fish @ line 2
function sync-desktop-wallpaper
	fix-wallpaper-path-list
	# ssh desktop "set -x DISPLAY :0; wp $bgimage"
  if laptop;and docked
      d wp $bgimage
  end
end
