function real-lock
	set focused (get-focused-workspace)
  set oldsum $bgimage_checksum
  set -U bgimage_checksum (checksum-simple $bgimage)
  save-workspaces
	i3-elements hide
  i3 workspace left
  i3 workspace right
  if match $oldsum $bgimage_checksum
    i3lock -i /tmp/i3lock.png -t
  else
    ~/ext-projs/i3lock-fancy-multimonitor/lock
  end

  i3-elements trans
  restore-workspaces
  ws $focused
end
