function renderstringplayable
	echo $argv | sed 's/[()-]//g' | condense_spaces
end
