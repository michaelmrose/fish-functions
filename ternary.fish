function ternary
	set test (echo $argv | cut -d '@' -f1)
  set s1 (echo $argv | cut -d '@' -f2)
  set s2 (echo $argv | cut -d '@' -f3)
  echo $test
  echo $s1
  echo $s2
	if eval $argv[1]
        eval $argv[2]
    else
        eval $argv[3]
    end
end
