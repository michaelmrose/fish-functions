function mydate
	set adate (date '+%r %b %d %Y')
    if startswith 0 $adate
        echo $adate | cut -c2-
    else
        echo $adate
    end
end
