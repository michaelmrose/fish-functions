function wsispaged
	test (count (list-workspaces | gr "^$argv")) -gt 1
end
