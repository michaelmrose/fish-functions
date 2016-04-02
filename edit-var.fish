function edit-var
	set name $arg[1]
  set vals $$name
  set tmp /tmp/(uid)
  p $vals > $tmp
  eval $EDITOR $tmp
  cat $tmp
end
