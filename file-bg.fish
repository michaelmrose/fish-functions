function file-bg
	set file $argv[1]
    set target $argv[2]
    set ext (get-ext $file)
    set category (echo $target | cut -d "/" -f1)
    set name (echo $target | cut -d "/" -f2)
    set dir (get-folder-for-backgrounds $category)
    # if not exists $dir
    #   return 1
    # end
    set location $dir/$name.$ext
    mv $file $location
    wp $location
    touch $wallpaperroot/checksums/(checksum-simple $file)
end
