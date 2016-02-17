function fish-color
	if exists $argv
    cat $argv | pygmentize -O style=monokai -l fish -f 256
  else
    while read -l line
      set input $input $line
    end
    println $input | pygmentize -O style=monokai -l fish -f 256
    println $input | fish_indent --ansi
  end
end
