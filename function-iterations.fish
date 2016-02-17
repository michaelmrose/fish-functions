function function-iterations
	set revisions (get-function-revisions $argv)
  if test (count $argv -gt 1)
    set revisions $revisions[$argv[2]]
  end
    
	for c in $revisions
    eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish
  end
end
