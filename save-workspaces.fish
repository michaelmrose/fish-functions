# Defined in /home/michael/.config/fish/buffer/restore-workspaces_save-worksp.fish @ line 12
function save-workspaces
	# set -U workspaces (get-active-workspaces)
  # set -U activeWorkspace (get-focused-workspace)
    set -U workspaces (get-active-workspaces)
    set -U activeWorkspace (get-focused-workspace)
end
