function edit-var
	set tmp /tmp/(uid)
  p $$argv > $tmp
  eval $EDITOR $tmp
  set $argv (cat $tmp)
end
