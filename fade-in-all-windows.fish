function fade-in-all-windows
	set steps 3
  for i in (seq $steps)
    for j in (list-windows)
      set final (return-real-trans-value $j)
      set transstep (wcalc -q "$final / $steps")
      set val (wcalc -q "$transstep * $i")
      transset -i $j $val > /dev/null
    end
  end
end
