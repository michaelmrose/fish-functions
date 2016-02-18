function vals
	set first (math $argv[1] + 2)
  if test $argv[2] -lt 0
    set last $argv[2]
  else
    set last (math $argv[2] +2)
  end
  for i in $argv[$first..$last]
    echo $i
  end
end
