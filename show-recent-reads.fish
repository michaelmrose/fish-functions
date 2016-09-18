function show-recent-reads --description 'use rofi to pick one of the items from recent_reads and open it with sopen if it is a file or books if it is a title'
	set choice (rfi match "choose a book: " $recent_reads)
    if exists $choice
        if test -f $choice
            sopen $choice
        else
            zathura $recent_reads_fnames[(findindex $choice $recent_reads)]
            # books $choice
        end
    else
        return 0
    end
end
