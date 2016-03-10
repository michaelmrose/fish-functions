function fade-out-all-windows
	set steps 3
  for i in (reverse 0 (seq $steps))
    for j in (list-windows)
      set start (return-real-trans-value $j)
      set transstep (wcalc -q "$start / $steps")
      set val (wcalc -q "$transstep * $i")
      transset -i $j $val > /dev/null
    end
  end
end
