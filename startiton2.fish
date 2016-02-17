function startiton2
	set apps (evens $argv)
    set ws (odds $argv)
    save-workspaces
    for i in (seq (count $apps))
        echo start $apps[$i] on $ws[$i]
        ws $ws[$i]
        fish -c $apps[$i] &
        waituntilfocused (return-windowclass $apps[$i])
        im workspace back_and_forth
    end
    restore-workspaces
end
