function any-window-in-list-hidden
	for window in $argv
    if window-is-hidden $window
      return 0
    end
  end
  return 1
end
