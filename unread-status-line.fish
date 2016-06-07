function unread-status-line
	set reddit (redditCount.py 2> /dev/null)
  if test $reddit -gt 0
    msg you have $reddit unread messages on reddit
  end
  echo $reddit
  return 0
end
