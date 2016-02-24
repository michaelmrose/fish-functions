function pick
	while read -l line
    set acc $acc $line
  end
  pick-subsect-list $acc 1..-1
end
