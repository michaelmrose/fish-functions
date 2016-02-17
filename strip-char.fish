function strip-char
	if startswith $argv[1] $argv[2..-1]
    cdr $argv[2..-1]
  else
    echo $argv[2..-1]
  end
end
