# Defined in /home/michael/.config/fish/buffer/dockctl_docked.fish @ line 32
function docked
	test count (get-onnected-displays) -gt 1
end
