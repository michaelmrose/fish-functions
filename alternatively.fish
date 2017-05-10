function alternatively
	set words (split-by $argv)
  set coms $words[1..-2]
  set val $words[-1]
  for com in $coms
    set res (eval $com)
    if exists $res
      p $res
      echo breaking
      break
    end
  end
  if not exists $res
    p $val
  end

    
	# set com $argv[1..-2]
  # set val $argv[-1]
  # set res (eval $com)
  # if exists $res
  #   p $res
  # else
  #   p $val
  # end
end
