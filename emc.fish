function emc
	if not pgrep emacs
    emacs --daemon &
  end
  sleep 1
	emacsclient -c $argv &
end
