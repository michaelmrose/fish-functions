function cleanup-desktop
	i3-msg [class="."] kill
  kill (pgrep emacs)
  kill (pgrep zeal)
  countdown 7
  rm /tmp/ZealLocalServer
end
