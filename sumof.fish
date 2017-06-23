function sumof
	set acc 0
  if exists $argv
    for i in $argv
      set acc (math "$acc + $i")
    end
  else
    while read -l line
      set acc (math "$acc + $line")
    end
  end
  echo $acc
end
