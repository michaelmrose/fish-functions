function get-function-revisions
	set revs (git -C ~/.config/fish/functions lgg | grep "editing $argv.fish" | cut -d " " -f2)
  println $revs
end
