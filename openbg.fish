function openbg
	set id (wininfo id dec)
    set com "$argv &"
    eval $com
    while [ (wininfo id dec) = $id ]
    end
    focus id $id
end
