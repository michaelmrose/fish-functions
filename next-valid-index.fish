function next-valid-index
	set ndx $argv[1]
  set lst $argv[2..-1]
  if test $ndx -ge (count $lst)
    echo 1
  else
    echo (math $ndx + 1)
  end
end
