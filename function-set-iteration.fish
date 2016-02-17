function function-set-iteration
	set revision (get-function-revisions $argv[1])[$argv[2]]
  eval git -C ~/.config/fish/functions --no-pager show $revision:$argv[1].fish
end
