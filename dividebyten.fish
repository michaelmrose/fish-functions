function dividebyten
	
    if test $argv -ge 100
        echo 1
    else
        wcalc -q "$argv / 100"
    end
end
