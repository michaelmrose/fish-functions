# Defined in /home/michael/.config/fish/buffer/get-folder-for-backgrounds.fish @ line 2
function get-folder-for-backgrounds
	
    #       echo $wallpaperroot
    #       return 0
    #   end
    # set res (find $wallpaperroot -type d | grep $argv | head -1)
    # if test (count $res) -ne 1
    #     return 1
    # else
    #     echo $res
    # end
    find $wallpaperroot -type d | grep $argv | head -1
end
