function alternatively
	set com $argv[1..-2]
  set val $argv[-1]
  set res (eval $com)
  if exists $res
    p $res
  else
    p $val
  end
end
