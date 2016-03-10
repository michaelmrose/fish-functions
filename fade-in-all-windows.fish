function fade-in-all-windows
	# set steps 7
  # for i in (seq $steps)
    # for j in (list-windows)
      # set final (return-real-trans-value $j)
      # set transstep (wcalc -q "$final / $steps")
      # set val (wcalc -q "$transstep * $i")
      # transset -i $j $val > /dev/null
    # end
  # end
  set vals 0.0 0.025 0.050 0.075 0.1 0.125 0.150 0.175 0.2 0.225 0.25 0.275 0.3 0.325 0.350 0.375 0.4 0.425 0.45 0.475 0.5 0.525 0.550 0.575 0.6 0.625 0.65 0.675 0.7 0.725 0.75
  for i in $vals
    for j in (visible-windows)
      transset -i $j $i > /dev/null
    end
  end
  fix-all-trans
end
