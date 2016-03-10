function fade-out-all-windows
	# set vals 0.75 0.675 0.6 0.525 0.45 0.375 0.3 0.225 0.150 0.0
  set vals 0.75 0.725 0.7 0.675 0.65 0.625 0.6 0.575 0.550 0.525 0.5 0.475 0.45 0.425 0.4 0.375 0.350 0.325 0.3 0.275 0.25 0.225 0.2 0.175 0.150 0.125 0.1 0.075 0.050 0.025 0.0
  for i in $vals
    for j in (list-windows)
      transset -i $j $i > /dev/null
    end
  end
end
