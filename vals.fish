function vals
	set min $argv[1]
  set max $argv[2]
  set rest $argv[3..-1]
  set last (lesserof $max (count $rest))  
  for i in $rest[$min..$last]
    echo $i
  end
end
