function filterandopen
	set val (rfi enter "enter a value: ")
    open (rfi match "choose a file" (here $val))
end
