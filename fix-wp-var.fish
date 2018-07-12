# Defined in /home/michael/.config/fish/buffer/fix-wp-var.fish @ line 1
function fix-wp-var
	set desktopwallpaperdir /med/images/backgrounds
    if test -d $desktopwallpaperdir
        if echo $bgimage |gr $desktopwallpaperdir
            echo fucked
        end
    end
end
