# Defined in /usr/home/michael/.config/fish/buffer/emd.fish @ line 2
function emd
		emacs --daemon &
		emf ec mmr/after-initial-setup &
end
