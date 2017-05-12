function sw
	set v $argv[1]
  set cases (odds $argv[2..-1])
  set results (evens $argv[2..-1])
  set index 1
  for c in $cases
    if match $v $c > /dev/null
      echo $results[$index]
      return 0
    else
      set index (increase index)
    end
  end
end
