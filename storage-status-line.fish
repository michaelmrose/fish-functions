function storage-status-line
	set res (explode (zf list -H tank | condense_spaces | cut -d ' ' -f1-3))
  echo $res[1] holds $res[2] with $res[3] remaining
end
