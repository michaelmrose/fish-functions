function functionize
	for f in (functions | sed 's#,#\n#')
    set out ~/.config/fish/functions/{$f}.fish
    functions $f > $out
    # echo (functions $f) > ~/.config/fish/functions/$fn.fish
  end
end
