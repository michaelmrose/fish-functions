function shutdown-nicely
	kill (pgrep emacs)
  sudo shutdown -h now
end
