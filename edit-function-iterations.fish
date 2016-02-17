function edit-function-iterations
	set tmp /tmp/function-iterations.fish
  function-iterations > $tmp
  set checksum (checksum-simple $tmp)
  eval $EDITOR $tmp
  set newsum (checksum-simple $tmp)
  if not match $checksum $newsum
    funcsave-file $tmp
  end
end
