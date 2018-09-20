# Defined in /home/michael/.config/fish/buffer/gr_gri.fish @ line 18
function gri
	switch $argv[1]
    case -w
      while read -l line
        set input $input $line
      end
      set res $input
      for word in $argv[2..-1]
        set res (p $res | gr $word)
      end
      p $res
    case "*"
      grep -iE --line-buffered --invert-match $argv;
  end
end
