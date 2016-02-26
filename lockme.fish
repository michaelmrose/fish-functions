function lockme
	save-workspaces
  invisible-i3-bars
  for window in (windows-list)
    transset -i $window 0
  end
  sleep 1
  for i in (get-connected-displays)
      i3-msg focus output $i
      i3-msg workspace {$i}_is_locked
  end
  i3-msg mode locked
end
