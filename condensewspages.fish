function condensewspages
	set focused (get-focused-workspace)
  set letter (echo $focused | cut -c1)
  ws {$letter}1
  for n in (seq 2 5)
    gws $letter{$n}
  end
end
