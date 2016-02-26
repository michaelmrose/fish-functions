function mpipe
	while read -l line
    set acc $acc $line
  end
  m $acc
end
