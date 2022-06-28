function while-unchanged-do
	set initial ($argv[2..-1])
	$argv[1] &
	while string match $initial ($argv[2..-1]) -q
		sleep 0.1
	end
end
