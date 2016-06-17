function next-valid-index-brief
	set lst $argv[2..-1]
  set n (findindex $argv[1] $lst)
  ternary test $n -ge (count $lst) @ $lst[1] @ $lst[(math $n + 1)]
end
