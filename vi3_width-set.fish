function vi3_width-set
	set-window-size perc width {$combolist[1]}{$combolist[2]}
    er vi3op
    update-op-status
end
