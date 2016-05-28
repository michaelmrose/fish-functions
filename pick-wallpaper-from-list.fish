function pick-wallpaper-from-list
	set folder (get-folder-for-backgrounds $argv)
  wp $folder/(p (ls $folder) | rofi -dmenu)
end
