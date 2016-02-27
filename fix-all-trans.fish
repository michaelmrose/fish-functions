function fix-all-trans
	apply-to-list fix-trans (list-windows)
  set hidden (filter-with-expr is-window-hidden (list-windows))
  for id in $hidden
    transset -i $id 0 
  end
end
