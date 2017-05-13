function match-lists
	set val $argv[1]
  set l1 (explode $argv[2])
  set l2 (explode $argv[3])
  set default $argv[4]
  if findindex $val $l1 > /dev/null
    echo $l2[(findindex $val $l1)]
  else
    echo $default
  end
end
