function open-book
	rdr -o (pathof $argv)
  # 	set fullpath (pathof $argv)
  # set ext (cutlast "." $argv)
  # set library $ebook_library
  # if substr $fullpath $library #if path is in $library
  #   set title (query-calibre-title title (escape-chars (extract-title $fullpath)))
  #   add-to-recent-reads "$title"
  #   add-to-recent-reads-fnames "$argv"
  #   # set-recent-book-covers
  # end
  # if contains $ext epub pdf djvu
  #   zathura "$argv"
  # else
  #   ebook-viewer "$argv"
  # end
end
