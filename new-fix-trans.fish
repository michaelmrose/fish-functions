function new-fix-trans
	set switches (repeat (count (list-windows)) -i)
  set windows (list-windows)
  set vals (apply-to-list return-trans-value (apply-to-list return-winclass (list-windows)))
  eval transset (zip-lists (zip-lists $switches $windows) $vals | sed ':a;N;$!ba;s/\n/ /g')
end
