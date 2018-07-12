# Defined in /home/michael/.config/fish/buffer/fix-wp-var.fish @ line 2
function fix-wp-var
	set desktopwallpaperdir /med/images/backgrounds
    if test -d $desktopwallpaperdir
        echo it lives
        if echo $bgimage |gr $desktopwallpaperdir
            echo fucked
        end
    end
end
