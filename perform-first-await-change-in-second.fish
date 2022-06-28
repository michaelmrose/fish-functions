function perform-first-await-change-in-second
	set initial (eval $argv[2..-1])
	eval $argv[1] &
	echo initial is $initial
	while string match $initial (eval $argv[2..-1]) -q
		sleep 0.1
	end
end
