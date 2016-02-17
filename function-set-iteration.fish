function function-set-iteration
	set rev (get-function-revisions $argv[1])
  set rev $rev[$argv[2]]
  eval git -C ~/.config/fish/functions --no-pager show $rev:$argv[1].fish | load-src
  funcsave $argv[1]
end
