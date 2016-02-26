function invisible-i3-bars
	for id in (get-i3bar-ids)
    transset -i $id 0 > /dev/null
  end
end
