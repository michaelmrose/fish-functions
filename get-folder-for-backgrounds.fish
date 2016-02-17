function get-folder-for-backgrounds
	if match $argv any
        echo $wallpaperroot
        return 0
    end
    set res (find $wallpaperroot -type d | grep $argv | head -1)
    if test (count $res) -ne 1
        return 1
    else
        echo $res
    end
end
