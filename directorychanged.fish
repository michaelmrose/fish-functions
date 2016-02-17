function directorychanged
	set dir (pwd)
    eval $argv
    set newdir (pwd)
    if [ $dir = $newdir ]
        return 1
    else
        return 0
    end
end
