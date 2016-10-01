function gr
	switch $argv[1]
    case -w
      while read -l line
        set input $input $line
      end
      set res $input
      for word in $argv[2..-1]
        set res (p $res | gr $word)
      end
      echo $res
    case "*"
      grep -iE $argv;
    end
end
