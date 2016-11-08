function rand-pick
	if not exists $argv
    while read -l line
      set lst $lst $line
    end
  else 
    set lst $argv
  end
	echo $lst[(rand-rng 1 (count $lst))]
end
