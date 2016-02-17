function function-set-iteration
	set rev (get-function-revisions $argv[1])[2]
  echo $rev
  # eval git -C ~/.config/fish/functions --no-pager show $revision:$argv[1].fish
end
