function fd
	for fn in $argv
    functions -e $fn
    rm ~/.config/fish/functions/$fn.fish
    ftags removeall $fn
  end
end
