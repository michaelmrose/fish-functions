function ternary
	set test (echo $argv | cut -d '@' -f1 | trim)
  set s1 (echo $argv | cut -d '@' -f2 | trim)
  set s2 (echo $argv | cut -d '@' -f3 | trim)
	if eval $test
    if defined $s1[1] 2> /dev/null
      eval $s1
    else
      echo $s1
    end
    else
      if defined $s2 2> /dev/null
        eval $s2
      else
        echo $s2
      end
    end
end
