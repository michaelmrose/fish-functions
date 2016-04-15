function open-book
	set fullpath (pwd)/$argv
    set ext (cutlast "." $argv)
    set library /med/ebooks
    if substr $fullpath $library #if path is in $library
        set title (query-calibre-title title (escape-chars (extract-title $fullpath)))
        add-to-recent-reads "$title"
    end

    switch $ext
        case "pdf"
            zathura "$argv" &
          case "epub"
            zathura "$argv" &
        case "*"
            ebook-viewer "$argv" &
    end
    set-recent-book-covers
end
