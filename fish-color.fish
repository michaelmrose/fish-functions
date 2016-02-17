function fish-color
	if exists $argv
    cat $argv | pygmentize -l Fish -O style=monokai
  else
    while read -l line
      set input $input $line
    end
    println $input | pygmentize -l Fish -O style=monokai
  end
end
