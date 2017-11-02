# Defined in /home/michael/.config/fish/buffer/vi3_move-window-to-workspace.fish @ line 2
function vi3_move-window-to-workspace
	# set w $argv(getwsstack $argv)
	i3-msg move container to workspace $argv
  # er vi3op
  # update-op-status
  # signal-i3blocks pages
end
