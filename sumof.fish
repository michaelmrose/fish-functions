function sumof
	set acc 0
  if exists $argv
    for i in $argv
      set acc (math "$acc + $i")
    end
  else
    while read -l line
      set args (explode-words $line)
      for i in $args
        set acc (math "$acc + $i")
      end
    end
  end
  echo $acc
end
