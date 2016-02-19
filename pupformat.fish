function pupformat
	set tmp /tmp/(uid)
  cat $argv | pup > $tmp
  cat $tmp > $argv
  rm $tmp
end
