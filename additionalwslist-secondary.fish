function additionalwslist-secondary
	set l1 (get-ws-info get name where rect.x = 0)
  set l2 (get-ws-info get name where visible = false)
  for i in $l1
    if contains $i $l2
      echo $i | cut -c1
    end
  end
end
