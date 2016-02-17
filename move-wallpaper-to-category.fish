function move-wallpaper-to-category
	set category $argv[1]
    set dest (get-folder-for-backgrounds $category)
    set files $argv[2..-1]
    for file in $files
        set name (cutlast / $file)
        mv $file $dest/$name
        if match $file $bgimage
            wp $dest/$name
        end
    end
end
