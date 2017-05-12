function sw
	set v $argv[1]
  set cases (odds $argv[2..-1])
  set results (evens $argv[2..-1])
  set index 1
  echo cases is $cases and results is $results
  for c in $cases
    if match $v $c > /dev/null
      echo $results[$index]
      return 0
    end
    set index (increase index)
  end
end
