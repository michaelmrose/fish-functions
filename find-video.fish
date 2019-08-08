# Defined in /home/michael/.config/fish/buffer/find-video.fish @ line 2
function find-video
	for entry in $VID_DIRS
        set files $files (findall $entry video)
    end
    set words $argv

    # echo w is $words

    for i in $words
        set files (println $files | grep -i $i)
        # echo files is
        # println $files
    end
    
    # echo finally files is
    println $files
end
