function equery-fns
	println (equery -C --help | condense_spaces)[10..-1] | sed 's/(//g' | sed 's/)//g' | cut -d " " -f1
end
