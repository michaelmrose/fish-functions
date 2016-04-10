function edit-var
	set tmp /tmp/(uid)
  p $$argv > $tmp
  nvim $tmp
  set $argv (cat $tmp)
end
