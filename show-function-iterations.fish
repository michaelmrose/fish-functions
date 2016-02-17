function show-function-iterations
	set tmp /tmp/function-iterations.fish
  set revisions (get-function-revisions $argv)
	for c in $revisions
    eval git -C ~/.config/fish/functions show $c:$argv.fish \>\> $tmp
  end
  set checksum (checksum-simple $tmp)
  eval $EDITOR $tmp
  set newsum (checksum-simple $tmp)
  if not match $checksum $newsum
    funcsave-file $tmp
  end
end
