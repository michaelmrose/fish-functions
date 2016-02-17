function choose-trans
	set val (rfi enter "set opacity: ")
    if isnumeric $val
        trans $val > /dev/null
    end
end
