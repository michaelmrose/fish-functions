function app
	while read -l line
    set collection $collection $line
  end
  eval $argv $collection
end
