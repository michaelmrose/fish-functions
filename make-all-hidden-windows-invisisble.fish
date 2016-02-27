function make-all-hidden-windows-invisisble
	fix-all-trans
  set hidden (filter-with-expr is-window-hidden (list-windows))
  for id in $hidden
    transset -i $id 0 
  end
end
