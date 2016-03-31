function apply-to-windows
	apply-to-list "$argv[1]" (matching-windows $argv[2])
end
