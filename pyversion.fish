function pyversion
	eselect python list | grep \* | condense_spaces | cut -c11
end
