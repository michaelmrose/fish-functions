function field
	while read -l line
    echo eval echo $line \| awk \'{\$$argv}\'
  end
end
