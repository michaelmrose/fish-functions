# Defined in /home/michael/.config/fish/buffer/kill-other-windows.fish @ line 2
function kill-other-windows
	set current (get-focused-workspace)
	i3-msg move container to workspace keep
  i3-msg workspace keep
  i3-msg [workspace=$current] kill
  i3-msg move container to workspace $current
  i3-msg workspace $current
  # kill-workspace
  # vi3_get-workspace keep
  # ws $current
end
