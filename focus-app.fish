function focus-app
	msg focus app run and argv is $argv
	# set currentclass (winclass)
  # set command (appkey $argv)
  set com focus (tolower (return-windowclass (appkey $argv)))
  msg $com
  ff $com
  # set targetclass (return-windowclass $command)
  # sendit t is $targetclass c is $currentclass
  # if match $currentclass $targetclass
  #     nextwindow
  #     msg next
  # else
  #     set -U lasttarget $class
  #     if focus class (tolower $class)
  #     else
  #         focus $command
  #     end
  # end
  er vi3op
  update-op-status
end
