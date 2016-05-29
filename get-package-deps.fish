function get-package-deps
	p (pkg depgraph twmn | condense_spaces | cut -d ' ' -f3-)[3..-1]
end
