# Defined in /usr/home/michael/.config/fish/buffer/emd.fish @ line 2
function emd
emacs --bg-daemon
sleep 3
	emf ecn mmr/after-initial-setup &
for p in (pgrep emacs)
	mullvad split-tunnel pid add $p
	end
end
