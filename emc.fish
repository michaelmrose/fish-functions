function emc
    emacsclient -cn $argv
    sleep 3
    emf e mmr/after-initial-setup &
    for p in (pgrep emacs)
	mullvad split-tunnel pid add $p
    end
    # if not emacsclient -c $argv
    #     msg daemon not running... starting now
    #     emd
    #     emacsclient -c $argv
    # end
end
