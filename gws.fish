# Defined in /home/michael/.config/fish/buffer/gws_vi3_get-workspace.fish @ line 2
function gws
	save-workspaces
    ws $argv
    vi3_select-all-in-workspace
    vi3_take-back
    restore-workspaces
end
