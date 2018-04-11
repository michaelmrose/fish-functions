# Defined in /home/michael/.config/fish/buffer/sync-desktop-wallpaper.fish @ line 2
function sync-desktop-wallpaper
	# ssh desktop "set -x DISPLAY :0; wp $bgimage"
  if laptop;and docked
	fix-wallpaper-path-list
      d wp $bgimage
  end
end
