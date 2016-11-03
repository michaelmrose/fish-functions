function logout
	i3-msg [class="."] kill
  countdown 7
  rm /tmp/Zeal
	i3-msg exit
end
