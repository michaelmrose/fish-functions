function unread-status-line
	set reddit (get-unread-count-reddit)
  if test $reddit -gt 0
    msg you have $reddit unread messages on reddit
  end
  echo $reddit
  return 0
end
