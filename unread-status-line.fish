function unread-status-line
	set -U LAST_UNREAD_COUNT $CURRENT_UNREAD_COUNT
  set -U CURRENT_UNREAD_COUNT (redditCount.py 2> /dev/null)
  if test $CURRENT_UNREAD_COUNT -gt $LAST_UNREAD_COUNT
    if exists $CURRENT_UNREAD_COUNT
      msg you have $CURRENT_UNREAD_COUNT unread messages on reddit
    end
  end
  echo $CURRENT_UNREAD_COUNT
  return 0
end
