function next-valid-index
	set ndx $argv[1]
  set lst $argv[2..-1]
  if test $ndx -ge (count $lst)
    echo $lst[1]
  else
    echo $list[(math $ndx + 1)]
  end
end
