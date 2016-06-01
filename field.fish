function field
	while read -l $line
    eval echo $line \| awk \'{\$$argv}\'
  end
end
