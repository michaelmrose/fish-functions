function function-iterations
	set revisions (get-function-revisions $argv)
  set cnt 1
	for c in $revisions
    echo \($cnt\)
    eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish
    set cnt (math $cnt + 1)
  end
end
