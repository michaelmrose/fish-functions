function fade-in-all-windows
	set step 0.01
  set steps 5
  set id $argv
  set final (return-trans-value (return-winclass $argv))
  set transstep (wcalc -q "$final / $steps")
  for i in (seq $steps)
    for i in (list-windows)
      set final (return-real-trans-value $argv)
      set transstep (wcalc -q "$final / $steps")
      set val (wcalc -q "$transstep * $i")
      transset -i $id $val > /dev/null
    end
    sleep $step
  end
end
