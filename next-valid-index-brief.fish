function next-valid-index-brief
	set lst $argv[2..-1]
  set n (findindex $argv[1] $lst)
  # set ndx (ternary "test $n -ge (count $lst)" "echo 1" "math $n + 1")
  set ndx (ternary test $n -ge (count $lst) @ 1 @ (math $n + 1))
  echo $lst[$ndx]
end
