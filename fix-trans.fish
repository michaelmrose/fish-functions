function fix-trans
	set class (return-winclass $argv)
  set val (return-trans-value $class)
  if test $val -eq 0
    set vals 0.75 0.65 0.55 0.45 0.35 0.25 0.15 0.05 0.0
  else
    set vals 0.05 0.15 0.25 0.35 0.45 0.55 0.65 0.75 $val
  end
  for i in $vals
    transset -i $argv $i
    sleep 0.01
  end
	# transset -i $argv (return-real-trans-value $argv)
end
