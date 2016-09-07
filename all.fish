function all
	for exp in $argv
    if not eval $exp
      return 1
    end
  end
end
