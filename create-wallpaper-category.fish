function create-wallpaper-category
	if substr $argv /
        set root (get-folder-for-backgrounds (echo $argv | cut -d / -f1))
        set name (echo $argv | cut -d / -f2)
    else
        set root $wallpaperroot
        set name $argv
    end
    mkdir $root/$name
end
