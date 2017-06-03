function containse
	if contains $argv[1] $argv[2..-1]
    echo $argv[1]
    return 0
  else
    return 1
  end
end
