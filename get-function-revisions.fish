function get-function-revisions
	git -C ~/.config/fish/functions lgg | grep "editing $argv.fish" | cut -d " " -f2
end
