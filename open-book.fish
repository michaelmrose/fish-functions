# Defined in /home/michael/.config/fish/buffer/add-to-recent-reads_open-book.fish @ line 17
function open-book
	set fullpath (pathof $argv)
  set ext (cutlast "." $argv)
  set library $ebook_library
  if substr $fullpath $library #if path is in $library
    set title (query-calibre-title title (escape-chars (extract-title $fullpath)))
    echo title is $title and argv is $argv
    add-to-recent-reads "$title"
    add-to-recent-reads-fnames "$argv"
    # set-recent-book-covers
  end
  if contains $ext epub pdf djvu
    zathura "$argv"
  else
    ebook-viewer "$argv"
  end
end
