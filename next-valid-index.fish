function next-valid-index
	set val $argv[1]
  set lst $argv[2..-1]
  set n (findindex $val $lst)
  if test $n -ge (count $lst)
    set ndx 1
    echo pos branch
  else
    set ndx (math $n + 1)
    echo else branch
  end
  echo n is $n
  echo ndx is $ndx
  echo lst is $lst
  echo $lst[$ndx]
end
