function while-unchanged-do
	set initial (eval $argv[2..-1])
	$argv[1] &
	while string match $initial (eval $argv[2..-1]) -q
		sleep 0.1
	end
end
