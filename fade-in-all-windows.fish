function fade-in-all-windows
	set step 0.01
  set steps 5
  for i in (seq $steps)
    for j in (list-windows)
      set final (return-real-trans-value $j)
      set transstep (wcalc -q "$final / $steps")
      set val (wcalc -q "$transstep * $i")
      transset -i $j $val > /dev/null
    end
    sleep $step
  end
end
