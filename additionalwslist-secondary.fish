function additionalwslist-secondary
	set l1 (get-ws-info get name where rect.x = 0)
  set l2 (get-ws-info get name where visible = false | cut -c1)
  for i in $l1
    if startswith f $i
      echo $i | cut -c1
    end
  end
end
