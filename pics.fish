function pics
	if exists $argv[1]
        if test -d $argv[1]
            set target $argv[1]
        else if test -f $argv
            sxiv -bo $argv
        else
            set target (get-folder-for-backgrounds $argv[1])
        end
    else
        pics (pwd)
    end
    # set pictures (findall-list dirs=$target types=jpg)
    
    #write something more complicated later
    switch (count $argv)
        case 1
            sxiv -tbfor $target 2> /dev/null
        case 2
            sxiv -tbfor $target/* 2> /dev/null
    end
end
