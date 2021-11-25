function emacsclient-setup
    emf e mmr/after-initial-setup &
    for p in (pgrep emacs)
	mullvad split-tunnel pid add $p
    end
    emacsclient -cn $argv &
end
