function condensewspages
	set focused (get-focused-workspace)
  set letter (echo $focused | cut -c1)
  for n in (seq 2 5)
    echo gws $letter{$n}
  end
end
