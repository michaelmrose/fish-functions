function get-tag
	filter-with-expr "startswith @$argv[1]" $argv[2..-1] | cut -d : -f2
end
