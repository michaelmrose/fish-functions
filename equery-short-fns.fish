function equery-short-fns
	println (equery -C --help | condense_spaces)[10..-1] | cut -d '(' -f2 | cut -d ')' -f1
end
