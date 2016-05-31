function next-valid-index
	set n $argv
  set lst 1 5 3 8
  if test $n -ge (count $lst)
    set ndx $lst[1]
  else
    set ndx (math $n + 1)
  end
  echo n is $n
  echo ndx is $ndx
  echo $lst[$ndx]
end
