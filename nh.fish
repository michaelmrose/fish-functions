function nh
	nohup $argv 2> /dev/null &
  rm nohup.out
end
