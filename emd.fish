function emd
	if not pgrep emacs
    emacs --daemon
  end
  emacsclient -c $argv
end
