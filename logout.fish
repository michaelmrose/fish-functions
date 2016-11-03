function logout
	i3-msg [class="."] kill
  countdown 7
  rm /tmp/ZealLocalServer 
	i3-msg exit
end
