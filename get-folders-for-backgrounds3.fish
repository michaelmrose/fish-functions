function get-folders-for-backgrounds3
	set res (find $wallpaperroot -type d | grep $argv)
    if not exists $res
        return 1
    else
        echo $res | sed 's/ /,/g'
    end
end
