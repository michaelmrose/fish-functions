# Defined in /home/michael/.config/fish/buffer/fix-wp-var.fish @ line 2
function fix-wp-var
	set desktopwallpaperdir /med/images/backgrounds
    if test -d $desktopwallpaperdir
        if not substr $bgimage $wallpaperroot
            echo fucked
        end
    end
end
