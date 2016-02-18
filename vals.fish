function vals
	set min (echo $argv[1] | cut -c1)
  set max (echo $argv[1] | cut -c(sizeof $argv[1])-)
  set rest $argv[2..-1]
  set last (lesserof $max (count $rest))  
  for i in $rest[$min..$last]
    echo $i
  end
end
