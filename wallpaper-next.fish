function wallpaper-next
	if not exists $wallpaperindex
        set -U wallpaperindex 1
    end
    set -U wallpaperindex (math $wallpaperindex - 1)
    if test $wallpaperindex -lt 1
        set -U wallpaperindex (count $recent_backgrounds)
    end
    wp $recent_backgrounds[$wallpaperindex] norecord=true
end
