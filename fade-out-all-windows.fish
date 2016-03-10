function fade-out-all-windows
	set steps 10
  set vals 0.75 0.675 0.6 0.525 0.45 0.375 0.3 0.225 0.150 0.0
  for i in $vals
    for j in (list-windows)
      transset -i $j $i > /dev/null
    end
  end
  # for i in (reverse 0 (seq $steps))
  #   for j in (list-windows)
  #     set start (return-real-trans-value $j)
  #     set transstep (wcalc -q "$start / $steps")
  #     set val (wcalc -q "$transstep * $i")
  #     transset -i $j $val > /dev/null
  #   end
  # end
end
