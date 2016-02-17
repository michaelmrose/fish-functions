function function-iterations
	set revisions (get-function-revisions $argv)
	for c in $revisions
    eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish
  end
end
