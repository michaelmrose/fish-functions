function arrangeme
	if not pgrep urxvt
        urxvtc &
    end
    focus class firefox
    mws k
    focus class dolphin
    mws d
    focus class qvim
    mws j
    focus class urxvt
    mws f
    focus class hexchat
    mws a
    i3-msg workspace k
    i3-msg workspace a
end
