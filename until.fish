function until
	set timeout (echo "$argv" | cut -d '#' -f2)
  set origin (seconds)
  echo o $origin t $timeout
	while not eval $argv
    set difference (expr (seconds) - $origin)
    echo d $difference
    if test $difference -gt $timeout
      break
    end
  end
end
