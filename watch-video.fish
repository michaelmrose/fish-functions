function watch-video
	set files (find-video $argv)
    set words $argv

    for i in $words
        set files (println $files | grep -i $i)
    end

    if test (count $files) -gt 1
        set files (rfi match "pick a movie" $files)
    end
    open $files
end
