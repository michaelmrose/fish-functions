function visible-windows
	filter-with-expr "not is-window-hidden" (list-windows)
end
