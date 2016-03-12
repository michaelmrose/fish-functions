function fix-trans
	set class (return-winclass $argv)
  set val (return-trans-value $class)
	transset -i $argv (return-real-trans-value $argv)
end
