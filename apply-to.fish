function apply-to
	set fn $argv[1]
  set lst $argv[2..-1]
  set l1 "for i in $lst"
  set l2 $fn
  set l3 end
  eval "$l1;$l2;$l3"
end
