function i3-elements
	set ids (get-i3bar-ids) (get-i3-frame-ids)
  switch $argv[1]
    case trans
      set val 0.8
    case hide
      set val 0
    case show
      set val 1.0
  end
  for id in $ids
    transset -i $id $val
  end
end
