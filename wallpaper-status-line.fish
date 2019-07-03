# Defined in /home/michael/.config/fish/buffer/wallpaper-status-line.fish @ line 2
function wallpaper-status-line
	if test (count $bgimage) -gt 1
        set image $bgimage[2]
    else
        set image $bgimage
    end
	  basename $image |sd - " " | cut -d . -f1
end
