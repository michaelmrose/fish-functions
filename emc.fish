function emc
	if not pgrep emacs
    emacs --daemon &
  end
	emacsclient -c $argv &
end
