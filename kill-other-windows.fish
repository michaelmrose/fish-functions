# Defined in /home/michael/.config/fish/buffer/kill-other-windows.fish @ line 2
function kill-other-windows
	set current (get-focused-workspace)
	i3-msg "move container to workspace keep;workspace keep"
  i3-msg [workspace=$current] kill
  i3-msg "move container to workspace $current;workspace $current"
  # kill-workspace
  # vi3_get-workspace keep
  # ws $current
end
