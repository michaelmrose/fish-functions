function additionalwslist-secondary
	set l1 (get-ws-info get name where rect.x = 0)
  set l2 (get-ws-info get name where visible = false)
  intersect l1 l2
end
