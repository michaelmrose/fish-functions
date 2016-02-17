function vi3_change-all
	set num 1
    for i in $combolist
        vi3_workspace $combolist[$num]
        set num (math $num + 1)
    end
    ws (explode $combolist)
end
