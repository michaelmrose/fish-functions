function get-package-deps
	p (pkg depgraph twmn | condense_spaces | cut -d ' ' -f3-)[3..-1] | cut -d '-' -f1-2
end
