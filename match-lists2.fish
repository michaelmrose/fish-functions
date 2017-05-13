function match-lists2
	set val $argv[1]
  set l1 (first-half $argv[2..-1])
  set l2 (last-half $argv[2..-1])
  echo l1 is $l1
  echo l2 is $l2
  echo $l2[(findindex $val $l1)]
end
