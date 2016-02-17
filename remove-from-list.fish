function remove-from-list
	set target $argv[1]
  set lst $argv[2..-1]
  filter-with-expr "not match $target" $lst
end
