function additionalwslist
	set cord $argv
	set l (get-ws-info get name where rect.x = $cord)
  set visible (get-ws-info get name where visible = true)
  for item in $l
    if not contains $item $visible
      echo $item
    end
  end
end
