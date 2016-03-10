function fade-in-trans-window
	set step 0.02
  set steps 12
  set id $argv
  set final (return-trans-value (return-winclass $argv))
  set transstep (wcalc -q "$final / $steps")
  # echo final is $final
  # echo transstep is $transstep
  for i in (seq $steps)
    set val (wcalc -q "$transstep * $i")
    transset -i $id $val > /dev/null
    sleep $step
  end
end
