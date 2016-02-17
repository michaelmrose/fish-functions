function new_tab
	set win (wininfo id dec)
    im layout tabbed
    urxvtc
    sleep 1
    msg $win
    focus id $win
end
