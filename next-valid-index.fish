function next-valid-index
	set ndx $argv[1]
  set list $argv[2..-1]
  if test $ndx -gt (count $list)
    echo 1
  else
    echo (math $ndx + 1)
  end
end
