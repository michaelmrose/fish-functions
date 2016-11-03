function logout
	i3-msg [class="."] kill
  kill (pgrep emacs)
  kill (pgrep zeal)
  countdown 7
  rm /tmp/ZealLocalServer 
	i3-msg exit
end
