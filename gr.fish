function gr
	switch $argv[1]
    case -w
      while read -l line
        set input $input $line
      end
      # for word in $argv[2..-1]
      #   set res (echo $res | gr )
    case "*"
      grep -iE $argv;
    end
end
