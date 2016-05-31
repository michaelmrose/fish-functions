function next-valid-entry
	set ndx $argv[1]
  set list $argv[2..-1]
  echo $list[(next-valid-index $ndx $list)]
end
