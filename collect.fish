function collect
	while read -l line
    set collected $collected $line
  end
  p $collected
end
