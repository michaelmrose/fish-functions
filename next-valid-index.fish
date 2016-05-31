function next-valid-index
	set n $argv[1]
  set lst $argv[2..-1]
  if test $n -ge (count $lst)
    set ndx $lst[1]
  else
    set ndx (math $n + 1)
  end
  echo n is $n
  echo ndx is $ndx
  echo lst is $lst
  echo $lst[$ndx]
end
