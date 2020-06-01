# Defined in /home/michael/.config/fish/buffer/unstoppable-kill-emacs-window.fish @ line 2
function unstoppable-kill-emacs-window
	emf e 'kill-buffer-and-window'  &
    emf e 'kill-matching-buffers-without-prompt "*eaf*"' &
    emf e kill-buffer
end
