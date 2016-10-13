function condense_lines
	if not exists $argv
    while read -l line
      set acc $acc $line
    end
    echo $acc
  else
	  for i in $argv
        set acc $acc $i
    end
    echo $acc
  end
end
