function next-valid-index-brief
	set lst $argv[2..-1]
  set ndx (ternary "test (findindex $argv[1] $last) -ge (count $lst)" "echo 1" "math $n + 1")
  # echo $lst[$ndx]
end
