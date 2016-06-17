function ternary
	set test (echo $argv | cut -d '@' -f1)
  set s1 (echo $argv | cut -d '@' -f2)
  set s2 (echo $argv | cut -d '@' -f3)
	if eval $test
    if defined $s1
      eval $s1
    else
      echo $s1
    end
    else
      if defined $s2
        eval $s2
      else
        echo $s2
      end
    end
end
