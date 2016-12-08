function cleanup-desktop
	kill (pgrep emacs)
  kill (pgrep zeal)
  sleep 1
  rm /tmp/ZealLocalServer
  sleep 1
	i3-msg [class="."] kill
  countdown 7
end
