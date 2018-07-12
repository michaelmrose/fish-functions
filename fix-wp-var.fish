# Defined in /home/michael/.config/fish/buffer/fix-wp-var.fish @ line 2
function fix-wp-var
	set desktopwallpaperdir /med/images/backgrounds
    if test -d $desktopwallpaperdir
        if not substr $bgimage $wallpaperroot
            set path (echo $bgimage | sed 's#/home/michael#/med/images#g')
            echo $path
        end
    end
end
