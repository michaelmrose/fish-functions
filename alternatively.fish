function alternatively
	set words (split-by $argv)
  set coms $words[1..-2]
  set val $words[-1]
  for com in $coms
    set first (echo $com | cut -d ' ' -f1)
    if defined $first
      set res (eval $com)
    else
      set res $$com
    end
    
    if exists $res
      p $res
      return 0
    end
  end
    p $val

    
	# set com $argv[1..-2]
  # set val $argv[-1]
  # set res (eval $com)
  # if exists $res
  #   p $res
  # else
  #   p $val
  # end
end
