# Defined in /home/michael/.config/fish/buffer/gws.fish @ line 2
function gws
	save-workspaces
  ws (decorate-workspacename $argv)
  vi3_select-all-in-workspace
  vi3_take-back
  restore-workspaces
end
