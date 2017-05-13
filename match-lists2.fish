function match-lists2
	set val $argv[1]
  set l1 (odds $argv[2..-1])
  set l2 (evens $argv[2..-1])
  echo $l2[(findindex $val $l1)]
end
