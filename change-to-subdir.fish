function change-to-subdir
	set dirs (println (find . -maxdepth 4 -type d))
    set matches (println $dirs | grep --regex /$argv\$)
    if exists $matches
        cd (shortest $matches)
    end
end
