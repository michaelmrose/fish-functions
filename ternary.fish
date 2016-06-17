function ternary
	set test (echo $argv | cut -d '@' -f1)
  set s1 (echo $argv | cut -d '@' -f2)
  set s2 (echo $argv | cut -d '@' -f3)
	if eval $test
        eval $s1
    else
        eval $s2
    end
end
