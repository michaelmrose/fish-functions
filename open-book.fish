# Defined in /home/michael/.config/fish/buffer/open-book.fish @ line 2
function open-book
	set fullpath (pwd)/$argv
  set ext (cutlast "." $argv)
  set library $ebook_library
  if substr $fullpath $library #if path is in $library
    set title (query-calibre-title title (escape-chars (extract-title $fullpath)))
    add-to-recent-reads "$title"
    add-to-recent-reads-fnames "$argv"
    # set-recent-book-covers
  end
  echo before if
  if contains $ext epub pdf djvu
    set app zathura
  else
    set app ebook-viewer
  end
  eval $app "$argv"
end
