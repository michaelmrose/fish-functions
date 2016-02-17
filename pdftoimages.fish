function pdftoimages
	pdftk $argv burst
    for i in (ls *.pdf)
        set fname (extractfilename $i)
        convert $i $fname".png"
    end

    rm *.pdf
end
