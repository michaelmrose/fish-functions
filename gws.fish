function gws
	save-workspaces
  # ws (decorate-workspacename $argv)
  ws $argv
  vi3_select-all-in-workspace
  vi3_take-back
  restore-workspaces
end
