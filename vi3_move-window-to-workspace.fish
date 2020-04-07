# Defined in /home/michael/.config/fish/buffer/vi3_move-window-to-workspace.fish @ line 2
function vi3_move-window-to-workspace
	  i3-msg move container to workspace (decorate-workspacename $argv)
end
