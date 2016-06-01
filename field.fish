function field
	while read -l line
    set com echo $line \| awk \'{\$$argv}\'
    echo $com
  end
end
