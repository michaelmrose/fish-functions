function areweonline
	if exists $argv
    set ip $argv
  else
    set ip 8.8.8.8
  end
	ping $ip -c 1 -W 1 > /dev/null 2> /dev/null
end
