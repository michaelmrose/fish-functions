function fade-in-trans-window
	set step 0.01
  set steps 5
  set id $argv
  set final (return-trans-value (return-winclass $argv))
  set transstep (wcalc -q "$final / $steps")
  # echo final is $final
  # echo transstep is $transstep
  for i in (seq $steps)
    set val (wcalc -q "$transstep * $i")
    transset (remove-newlines (apply-to-list "compose-transset-arg $val" (list-windows)))
    # transset -i $id $val > /dev/null
    # transset (squish (apply-to-list "echo -i " $argv) | sed 's#-i# -i #g' | trim)
    sleep $step
  end
end
