function fade-out-all-windows
	set vals 0.75 0.675 0.6 0.525 0.45 0.375 0.3 0.225 0.150 0.0
  for i in $vals
    for j in (list-windows)
      transset -i $j $i > /dev/null
    end
    sleep 0.01
  end
end
