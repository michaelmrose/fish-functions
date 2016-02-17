function find-video
	set files (findall /mnt/ext/Videos video)
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
