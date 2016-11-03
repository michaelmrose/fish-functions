function logout
	i3-msg [class="."] kill
  countdown 10
	i3-msg exit
end
