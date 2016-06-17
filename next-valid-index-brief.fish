function next-valid-index-brief
	set lst $argv[2..-1]
  set n (findindex $argv[1] $lst)
  ternary "test $n -ge (count $lst)" "echo 1" "math $n + 1"
  echo $lst[$ndx]
end
