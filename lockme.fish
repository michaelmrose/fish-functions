function lockme
	# i3-elements hide
  # for window in (windows-list)
  #   transset -i $window 0
  # end
  fade-out-all-windows
  sleep 0.25
  i3-msg mode locked
end
