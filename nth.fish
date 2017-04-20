function nth
	while read -l line
    echo $line | awk "{print \$$argv}"
  end
end
