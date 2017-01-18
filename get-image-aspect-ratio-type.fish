function get-image-aspect-ratio-type
	set ratio (get-aspect-ratio $argv) 
    set integer (truncate-num (wcalc -q "$ratio * 100"))
    switchonval $integer 1-132 narrow 133-230 wide 231-249 extrawide 250-900 superwide
end
