# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 118
function startiton2
	set apps (evens $argv)
    set ws (odds $argv)
    save-workspaces
    for i in (seq (count $apps))
        echo start $apps[$i] on $ws[$i]
        ws $ws[$i]
        fish -c $apps[$i] &
        waituntilfocused (return-windowclass $apps[$i])
        i3 workspace back_and_forth
    end
    restore-workspaces
end
