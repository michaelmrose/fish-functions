function wallpaper-prev
	if not exists $wallpaperindex
        set -U wallpaperindex 1
    end
    set -U wallpaperindex (math $wallpaperindex + 1)
    if test $wallpaperindex -gt (count $recent_backgrounds)
        set -U wallpaperindex 1
    end
    wp $recent_backgrounds[$wallpaperindex] norecord=true
end
