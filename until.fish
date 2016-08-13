function until
	set timeout (echo "$argv" | cut -d '#' -f2)
  set origin (seconds)
	while not eval $argv
    set difference (expr (seconds) - $origin)
    if test $difference -gt $timeout
      break
    end
  end
end
