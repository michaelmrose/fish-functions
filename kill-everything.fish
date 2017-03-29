function kill-everything
	set displays (get-connected-displays)
  for i in $displays
    i3-msg focus output $i
    select-all-in-workspace
    i3-msg kill
  end
end
