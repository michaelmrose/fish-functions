function sw
	set v $argv[1]
  set cases (odds $argv[2..-1])
  set results (evens $argv[2..-1])
  for c in $cases
    if match $v $c
      echo $c
      return 0
    end
  end
end
