# Defined in /home/michael/.config/fish/buffer/g.fish @ line 2
function g
	switch $argv[1]
    case -w
      while read -l line
        set input $input $line
      end
      set res $input
      for word in $argv[2..-1]
        set res (p $res | g $word)
      end
      p $res
    case "*"
      grep -iE --line-buffered $argv;
  end
end
