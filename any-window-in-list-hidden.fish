function any-window-in-list-hidden
	for window in $argv
    if is-window-hidden $window
      return 0
    end
  end
  return 1
end
