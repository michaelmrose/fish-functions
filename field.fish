function field
	while read -l line
    set com "echo \'$line\' \| awk \'\{ print \$$argv\}\'"
    eval $com
  end
end
