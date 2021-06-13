# Defined in /usr/home/michael/.config/fish/buffer/edit_emd_emf.fish @ line 20
function emd
		emacs --bg-daemon
		emf ecn mmr/after-initial-setup &
		emf en mmr/load-agenda-files
end
