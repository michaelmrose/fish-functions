function get-brightness-of-all
	set result (xrandr --verbose | grep -i brightness |  cut -d " " -f2)
    for i in $result
        echo (wcalc -q "$i * 100")
    end
end
