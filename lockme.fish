function lockme
	save-workspaces
  i3-msg mode locked
  for window in (windows-list)
    transset -i $window 0
  end
  # for i in (get-connected-displays)
  #     i3-msg focus output $i
  #     i3-msg workspace {$i}_is_locked
  # end
  # i3-msg bar mode invisible
end
