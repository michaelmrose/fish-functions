function choose-tab
	set tabs (get-tabs)
    set choice (rfi match "pick a tab" $tabs)
    set ndx (findindex $choice $tabs)
    focus class firefox
    xdotool key colon b space $ndx Return
end
