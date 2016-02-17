function calculate-space-saved
	set ratio (zf -q compressratio tank | cut -c1-3)
    set used (zf -q used tank | cut -d G -f1)
    set additional (wcalc -q "($ratio - 1) * $used")
    echo $additional Gigabytes saved by compression
end
