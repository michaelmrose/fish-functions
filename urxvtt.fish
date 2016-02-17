function urxvtt
	if not pgrep urxvtd
        urxvtd &
    end
    while not pgrep urxvtd
    end
    urxvtc &
end
