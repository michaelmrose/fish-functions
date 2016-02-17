function select-library
	switch-library (rfi match 'select a library: ' (ls ~/calibre))
end
