function function-iterations
	set revisions (get-function-revisions $argv)
	for c in $revisions
    eval git -C ~/.config/fish/functions show --no-pager $c:$argv.fish
  end
end
