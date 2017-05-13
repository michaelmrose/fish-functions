function last-half
	set half (math 1+(count $argv)/2)
  p $argv[$half..-1]
end
