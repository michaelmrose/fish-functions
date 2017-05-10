function which-playing
	set res (filter-with-expr is-playing (playerctl -l))
  if exists $res
    p $res
  else
    return 1
  end
end
