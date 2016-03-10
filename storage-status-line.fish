function storage-status-line
	set res (explode (zf list -H tank | condense_spaces | cut -d ' ' -f1-3))
  echo ZFS: $res[1]  size: $res[2] remaining: $res[3]
end
