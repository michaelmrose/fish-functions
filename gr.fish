function gr
	switch $argv[1]
    case -w
      nil
    case "*"
      grep -iE $argv;
    end
end
