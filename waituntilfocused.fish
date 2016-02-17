function waituntilfocused
	
    set winid (wininfo id dec)
    
    while [ (wininfo id dec) = $winid ]
    end

    while not [ (wininfo class) = $argv ]
    end
end
