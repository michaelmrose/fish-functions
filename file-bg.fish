# Defined in /home/michael/.config/fish/buffer/file-bg.fish @ line 2
function file-bg
	set file $argv[1]
    set target $argv[2]
    set ext (get-ext $file)
    set category (echo $target | cut -d "/" -f1)
    set name (echo $target | cut -d "/" -f2)
    set dir (get-folder-for-backgrounds $category)
    if exists $dir
        if not test -d $dir 
            echo $dir does not exist
            return 1
        end
    end

    # set location $dir/$name.$ext
    # if test -e $location
    #     echo target already exists
    #     return 1
    # end
    # mv $file $location
    # wp $location
end
