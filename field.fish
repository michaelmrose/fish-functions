function field
	while read -l line
    echo "echo \'$line\' \| awk \'\{ print \$$argv\}\'"
  end
end
