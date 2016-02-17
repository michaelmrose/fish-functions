function vi3_height-set
	set-window-size perc height {$combolist[1]}{$combolist[2]}
    er vi3op
    update-op-status
end
