function field
	while read -l line
    eval "echo \'$line\' \| awk \'\{print \$$argv\}\'"
  end
end
