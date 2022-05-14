function online?
	if exists $argv
    set ip $argv
  else
    set ip 8.8.8.8
  end
	ping $ip -c 1 -W 2 > /dev/null 2> /dev/null
end
