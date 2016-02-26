function edit
	if not exists $argv
    while read -l line
      set acc $acc $line
    end
  else
    set acc $argv
  end
  # set tmp /tmp/(uid)
  set tmp /tmp/edited
  println $acc > $tmp   
  eval $EDITOR $tmp
  cat $tmp
end
