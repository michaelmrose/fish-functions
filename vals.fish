function vals
	set min (echo $argv[1] | cut -c1)
  set max (echo $argv[1] | cut -c4-5)
  if test (count $argv) -gt 1
    set rest $argv[2..-1]
    if test $min -gt (count $rest)
      return 0
    end
    set last (lesserof $max (count $rest))  
    echo min is $min and last is $last and rest is $rest
    for i in $rest[$min..$last]
      echo $i
    end
  end
end
