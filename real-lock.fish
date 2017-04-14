function real-lock
	set focused (get-focused-workspace)
  save-workspaces
	i3-elements hide
  i3 workspace left
  i3 workspace right
  ~/ext-projs/i3lock-fancy-multimonitor/lock
  i3-elements trans
  restore-workspaces
  ws $focused
end
