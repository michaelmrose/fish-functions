function lockme
	invisible-i3-bars
  invisible-i3-frames
  for window in (windows-list)
    transset -i $window 0
  end
  sleep 0.25
  i3-msg mode locked
end
