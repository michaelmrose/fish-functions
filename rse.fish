function rse
	kill (pgrep emacs)
  emacs --daemon
  while not pgrep emacs
  end
  emacsclient -c
end
