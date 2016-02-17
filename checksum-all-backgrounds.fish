function checksum-all-backgrounds
	rm $wallpaperroot/checksums/*
  set images ''
  set checksums ''
  for i in (findall $wallpaperroot image)
    set csum (checksum-simple $i)
    set images $images $i
    set checksums $checksums $csum
    touch $wallpaperroot/checksums/$csum
  end
  set -U background_list $images
  set -U background_checksums $checksums
end
