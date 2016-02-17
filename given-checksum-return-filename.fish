function given-checksum-return-filename
	set n (findindex $argv $background_checksums)
  echo $background_list[$n]
  # zip-lists $checksums $images
end
