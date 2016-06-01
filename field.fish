function field
	while read -l line
    set com echo \'$line\' \| awk \'\{\$$argv\}\'
    eval $com
  end
end
