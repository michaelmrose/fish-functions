# Defined in /home/michael/.config/fish/buffer/splice.fish @ line 2
function splice
	set ranges (echo $argv[1] | cut -d , -f1- --output-delimiter=" ")
  if test (count $argv) -lt 2
      while read -l line
          set vals $vals $line
      end
  else
      set vals $argv[2..-1]
  end
  for r in $ranges
      p $vals[$r]
  end
end
