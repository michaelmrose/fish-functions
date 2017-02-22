function open-book
	set fullpath (pwd)/$argv
    set ext (cutlast "." $argv)
    set library /med/ebooks
    if substr $fullpath $library #if path is in $library
        set title (query-calibre-title title (escape-chars (extract-title $fullpath)))
        add-to-recent-reads "$title"
        add-to-recent-reads-fnames "$argv"
        # set-recent-book-covers
    end

    switch $ext
        case "pdf"
            nohup zathura "$argv" &
          case "epub"
            nohup zathura "$argv" &
        case "*"
            nohup ebook-viewer "$argv" &
    end
end
