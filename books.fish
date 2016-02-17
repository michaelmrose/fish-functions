function books --description 'open books given either as a title or criteria query using rofi to narrow down multiple results or recent-reads if no input given'
	if exists $argv
        if test -f "$argv"
            open-book "$argv"
            return 0
        end
        if test (count $argv) -gt 1
            set tail $argv[2..-1]
        end
        switch $argv[1]
            case --add
                badd $tail
            case -a
                books --add $tail
            case --replacecover
                pdfkillcover "$tail"
                coverit "$tail"
            case -r
                books --replacecover $tail
            case --removewatermark
                remove-pdf-watermark "$tail"
            case -w
                books --removewatermark $tail
            case -l
                switch (count $argv)
                    case 1
                        select-library
                    case 2
                        switch-library $argv[2]
                    case '*'
                        switch-library $argv[2]
                        books $argv[3..-1]
                end
            case -s
                bsrch $tail
            case --search
                bsrch $tail
            case --cover
                coverit "$tail"
            case -c
                books --cover $tail
            case --erase
                set -e recent_reads
            case -e
                books --erase
            case --query
                gvfs-open (choose-format (get-fname-of-book (select-book (query-calibre-title (return-query $tail)))))
                # e open choose-format get-fname-of-book select-book query-calibre-title return-query $tail
            case -q
                books --query $tail
            case "*"
                books --query $argv
        end

    else
        show-recent-reads
    end
end
