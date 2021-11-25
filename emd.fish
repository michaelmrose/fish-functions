function emd
	emacs --bg-daemon
	sleep 3
	emf e mmr/after-initial-setup &
	for p in (pgrep emacs)
		mullvad split-tunnel pid add $p
	end
	starton g emc Emacs
end
