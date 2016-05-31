function next-valid-index
	set val $argv[1]
  set lst $argv[2..-1]
  set n (findindex $val $lst)
  if test $n -ge (count $lst)
    set ndx $lst[1]
  else
    set ndx (math $n + 1)
  end
  echo $lst[$ndx]
end
