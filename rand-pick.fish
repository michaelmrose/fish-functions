function rand-pick
	if not exists $argv
    set lst (collect)
  else 
    set lst $argv
  end
	echo $lst[(rand-rng 1 (count $lst))]
end
