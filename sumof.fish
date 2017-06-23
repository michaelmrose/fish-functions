function sumof
	set acc 0
  if not exists $argv
    while read -l $line
      set acc (math "$acc + $line")
    end
  else
    for i in $argv
      set acc (math "$acc + $i")
    end
  end
  echo $acc
end
